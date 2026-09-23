package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class Sonic {
    public static final int AMDF_FREQUENCY = 4000;
    public static final int BYTES_PER_SAMPLE = 2;
    public static final int MAXIMUM_PITCH = 400;
    public static final int MINIMUM_PITCH = 65;
    public final int channelCount;
    public final short[] downSampleBuffer;
    public short[] inputBuffer;
    public int inputFrameCount;
    public final int inputSampleRateHz;
    public int maxDiff;
    public final int maxPeriod;
    public final int maxRequiredFrameCount;
    public int minDiff;
    public final int minPeriod;
    public int newRatePosition;
    public int oldRatePosition;
    public short[] outputBuffer;
    public int outputFrameCount;
    public final float pitch;
    public short[] pitchBuffer;
    public int pitchFrameCount;
    public int prevMinDiff;
    public int prevPeriod;
    public final float rate;
    public int remainingInputToCopyFrameCount;
    public final float speed;

    public Sonic(int i, int i2, float f2, float f3, int i3) {
        this.inputSampleRateHz = i;
        this.channelCount = i2;
        this.speed = f2;
        this.pitch = f3;
        this.rate = i / i3;
        this.minPeriod = i / 400;
        int i4 = i / 65;
        this.maxPeriod = i4;
        int i5 = i4 * 2;
        this.maxRequiredFrameCount = i5;
        this.downSampleBuffer = new short[i5];
        this.inputBuffer = new short[i5 * i2];
        this.outputBuffer = new short[i5 * i2];
        this.pitchBuffer = new short[i5 * i2];
    }

    private void adjustRate(float f2, int i) {
        int i2;
        int i3;
        if (this.outputFrameCount == i) {
            return;
        }
        int i4 = this.inputSampleRateHz;
        int i5 = (int) (i4 / f2);
        while (true) {
            if (i5 <= 16384 && i4 <= 16384) {
                break;
            }
            i5 /= 2;
            i4 /= 2;
        }
        moveNewSamplesToPitchBuffer(i);
        int i6 = 0;
        while (true) {
            int i7 = this.pitchFrameCount;
            if (i6 >= i7 - 1) {
                removePitchFrames(i7 - 1);
                return;
            }
            while (true) {
                i2 = this.oldRatePosition;
                int i8 = (i2 + 1) * i5;
                i3 = this.newRatePosition;
                if (i8 <= i3 * i4) {
                    break;
                }
                this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, 1);
                int i9 = 0;
                while (true) {
                    int i10 = this.channelCount;
                    if (i9 < i10) {
                        this.outputBuffer[(this.outputFrameCount * i10) + i9] = interpolate(this.pitchBuffer, (i10 * i6) + i9, i4, i5);
                        i9++;
                    }
                }
                this.newRatePosition++;
                this.outputFrameCount++;
            }
            int i11 = i2 + 1;
            this.oldRatePosition = i11;
            if (i11 == i4) {
                this.oldRatePosition = 0;
                com.google.android.exoplayer2.util.Assertions.checkState(i3 == i5);
                this.newRatePosition = 0;
            }
            i6++;
        }
    }

    private void changeSpeed(float f2) {
        int iInsertPitchPeriod;
        int i = this.inputFrameCount;
        if (i < this.maxRequiredFrameCount) {
            return;
        }
        int iSkipPitchPeriod = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                iInsertPitchPeriod = copyInputToOutput(iSkipPitchPeriod);
            } else {
                int iFindPitchPeriod = findPitchPeriod(this.inputBuffer, iSkipPitchPeriod);
                double d2 = f2;
                short[] sArr = this.inputBuffer;
                if (d2 > 1.0d) {
                    iSkipPitchPeriod = iFindPitchPeriod + skipPitchPeriod(sArr, iSkipPitchPeriod, f2, iFindPitchPeriod) + iSkipPitchPeriod;
                } else {
                    iInsertPitchPeriod = insertPitchPeriod(sArr, iSkipPitchPeriod, f2, iFindPitchPeriod);
                }
            }
            iSkipPitchPeriod += iInsertPitchPeriod;
        } while (this.maxRequiredFrameCount + iSkipPitchPeriod <= i);
        removeProcessedInputFrames(iSkipPitchPeriod);
    }

    private int copyInputToOutput(int i) {
        int iMin = java.lang.Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(this.inputBuffer, i, iMin);
        this.remainingInputToCopyFrameCount -= iMin;
        return iMin;
    }

    private void copyToOutput(short[] sArr, int i, int i2) {
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i2);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i3 = this.channelCount;
        java.lang.System.arraycopy(sArr, i * i3, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i3, i3 * i2);
        this.outputFrameCount += i2;
    }

    private void downSampleInput(short[] sArr, int i, int i2) {
        int i3 = this.maxRequiredFrameCount / i2;
        int i4 = this.channelCount;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.downSampleBuffer[i7] = (short) (i8 / i5);
        }
    }

    private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.channelCount;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : java.util.Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    private int findPitchPeriod(short[] sArr, int i) {
        int iFindPitchPeriodInRange;
        int i2 = this.inputSampleRateHz;
        int i3 = i2 > 4000 ? i2 / AMDF_FREQUENCY : 1;
        if (this.channelCount == 1 && i3 == 1) {
            iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i, this.minPeriod, this.maxPeriod);
        } else {
            downSampleInput(sArr, i, i3);
            int iFindPitchPeriodInRange2 = findPitchPeriodInRange(this.downSampleBuffer, 0, this.minPeriod / i3, this.maxPeriod / i3);
            if (i3 != 1) {
                int i4 = iFindPitchPeriodInRange2 * i3;
                int i5 = i3 * 4;
                int i6 = i4 - i5;
                int i7 = i4 + i5;
                int i8 = this.minPeriod;
                if (i6 < i8) {
                    i6 = i8;
                }
                int i9 = this.maxPeriod;
                if (i7 > i9) {
                    i7 = i9;
                }
                if (this.channelCount == 1) {
                    iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i, i6, i7);
                } else {
                    downSampleInput(sArr, i, 1);
                    iFindPitchPeriodInRange = findPitchPeriodInRange(this.downSampleBuffer, 0, i6, i7);
                }
            } else {
                iFindPitchPeriodInRange = iFindPitchPeriodInRange2;
            }
        }
        int i10 = previousPeriodBetter(this.minDiff, this.maxDiff) ? this.prevPeriod : iFindPitchPeriodInRange;
        this.prevMinDiff = this.minDiff;
        this.prevPeriod = iFindPitchPeriodInRange;
        return i10;
    }

    private int findPitchPeriodInRange(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.channelCount;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += java.lang.Math.abs(sArr[i4 + i9] - sArr[(i4 + i2) + i9]);
            }
            if (iAbs * i7 < i5 * i2) {
                i7 = i2;
                i5 = iAbs;
            }
            if (iAbs * i6 > i8 * i2) {
                i6 = i2;
                i8 = iAbs;
            }
            i2++;
        }
        this.minDiff = i5 / i7;
        this.maxDiff = i8 / i6;
        return i7;
    }

    private int insertPitchPeriod(short[] sArr, int i, float f2, int i2) {
        int i3;
        if (f2 < 0.5f) {
            i3 = (int) ((i2 * f2) / (1.0f - f2));
        } else {
            this.remainingInputToCopyFrameCount = (int) ((((2.0f * f2) - 1.0f) * i2) / (1.0f - f2));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i4);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i5 = this.channelCount;
        java.lang.System.arraycopy(sArr, i * i5, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i5, i5 * i2);
        overlapAdd(i3, this.channelCount, this.outputBuffer, this.outputFrameCount + i2, sArr, i + i2, sArr, i);
        this.outputFrameCount += i4;
        return i3;
    }

    private short interpolate(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.channelCount];
        int i4 = this.newRatePosition * i2;
        int i5 = this.oldRatePosition;
        int i6 = i5 * i3;
        int i7 = (i5 + 1) * i3;
        int i8 = i7 - i4;
        int i9 = i7 - i6;
        return (short) ((((i9 - i8) * s2) + (s * i8)) / i9);
    }

    private void moveNewSamplesToPitchBuffer(int i) {
        int i2 = this.outputFrameCount - i;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.pitchBuffer, this.pitchFrameCount, i2);
        this.pitchBuffer = sArrEnsureSpaceForAdditionalFrames;
        short[] sArr = this.outputBuffer;
        int i3 = this.channelCount;
        java.lang.System.arraycopy(sArr, i * i3, sArrEnsureSpaceForAdditionalFrames, this.pitchFrameCount * i3, i3 * i2);
        this.outputFrameCount = i;
        this.pitchFrameCount += i2;
    }

    public static void overlapAdd(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private boolean previousPeriodBetter(int i, int i2) {
        return i != 0 && this.prevPeriod != 0 && i2 <= i * 3 && i * 2 > this.prevMinDiff * 3;
    }

    private void processStreamInput() {
        int i = this.outputFrameCount;
        float f2 = this.speed;
        float f3 = this.pitch;
        float f4 = f2 / f3;
        float f5 = this.rate * f3;
        double d2 = f4;
        if (d2 > 1.00001d || d2 < 0.99999d) {
            changeSpeed(f4);
        } else {
            copyToOutput(this.inputBuffer, 0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f5 != 1.0f) {
            adjustRate(f5, i);
        }
    }

    private void removePitchFrames(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.pitchBuffer;
        int i2 = this.channelCount;
        java.lang.System.arraycopy(sArr, i * i2, sArr, 0, (this.pitchFrameCount - i) * i2);
        this.pitchFrameCount -= i;
    }

    private void removeProcessedInputFrames(int i) {
        int i2 = this.inputFrameCount - i;
        short[] sArr = this.inputBuffer;
        int i3 = this.channelCount;
        java.lang.System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.inputFrameCount = i2;
    }

    private int skipPitchPeriod(short[] sArr, int i, float f2, int i2) {
        int i3;
        if (f2 >= 2.0f) {
            i3 = (int) (i2 / (f2 - 1.0f));
        } else {
            this.remainingInputToCopyFrameCount = (int) (((2.0f - f2) * i2) / (f2 - 1.0f));
            i3 = i2;
        }
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i3);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        overlapAdd(i3, this.channelCount, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount, sArr, i, sArr, i + i2);
        this.outputFrameCount += i3;
        return i3;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.prevMinDiff = 0;
        this.minDiff = 0;
        this.maxDiff = 0;
    }

    public void getOutput(java.nio.ShortBuffer shortBuffer) {
        int iMin = java.lang.Math.min(shortBuffer.remaining() / this.channelCount, this.outputFrameCount);
        shortBuffer.put(this.outputBuffer, 0, this.channelCount * iMin);
        int i = this.outputFrameCount - iMin;
        this.outputFrameCount = i;
        short[] sArr = this.outputBuffer;
        int i2 = this.channelCount;
        java.lang.System.arraycopy(sArr, iMin * i2, sArr, 0, i * i2);
    }

    public int getOutputSize() {
        return this.outputFrameCount * this.channelCount * 2;
    }

    public int getPendingInputBytes() {
        return this.inputFrameCount * this.channelCount * 2;
    }

    public void queueEndOfStream() {
        int i;
        int i2 = this.inputFrameCount;
        float f2 = this.speed;
        float f3 = this.pitch;
        int i3 = this.outputFrameCount + ((int) ((((i2 / (f2 / f3)) + this.pitchFrameCount) / (this.rate * f3)) + 0.5f));
        this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, i2, (this.maxRequiredFrameCount * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.maxRequiredFrameCount;
            int i5 = this.channelCount;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.inputBuffer[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.inputFrameCount = (i * 2) + this.inputFrameCount;
        processStreamInput();
        if (this.outputFrameCount > i3) {
            this.outputFrameCount = i3;
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void queueInput(java.nio.ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.channelCount;
        int i2 = iRemaining / i;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.inputBuffer, this.inputFrameCount, i2);
        this.inputBuffer = sArrEnsureSpaceForAdditionalFrames;
        shortBuffer.get(sArrEnsureSpaceForAdditionalFrames, this.inputFrameCount * this.channelCount, ((i * i2) * 2) / 2);
        this.inputFrameCount += i2;
        processStreamInput();
    }
}
