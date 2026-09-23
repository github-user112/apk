package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public abstract class BasePlayer implements com.google.android.exoplayer2.Player {
    public final com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();

    private int getRepeatModeForNavigation() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void seekToOffset(long j) {
        long currentPosition = getCurrentPosition() + j;
        long duration = getDuration();
        if (duration != com.google.android.exoplayer2.C.TIME_UNSET) {
            currentPosition = java.lang.Math.min(currentPosition, duration);
        }
        seekTo(java.lang.Math.max(currentPosition, 0L));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addMediaItem(int i, com.google.android.exoplayer2.MediaItem mediaItem) {
        addMediaItems(i, java.util.Collections.singletonList(mediaItem));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addMediaItem(com.google.android.exoplayer2.MediaItem mediaItem) {
        addMediaItems(java.util.Collections.singletonList(mediaItem));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addMediaItems(java.util.List<com.google.android.exoplayer2.MediaItem> list) {
        addMediaItems(Integer.MAX_VALUE, list);
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean canAdvertiseSession() {
        return true;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void clearMediaItems() {
        removeMediaItems(0, Integer.MAX_VALUE);
    }

    public com.google.android.exoplayer2.Player.Commands getAvailableCommands(com.google.android.exoplayer2.Player.Commands commands) {
        return new com.google.android.exoplayer2.Player.Commands.Builder().addAll(commands).addIf(4, !isPlayingAd()).addIf(5, isCurrentMediaItemSeekable() && !isPlayingAd()).addIf(6, hasPreviousMediaItem() && !isPlayingAd()).addIf(7, !getCurrentTimeline().isEmpty() && (hasPreviousMediaItem() || !isCurrentMediaItemLive() || isCurrentMediaItemSeekable()) && !isPlayingAd()).addIf(8, hasNextMediaItem() && !isPlayingAd()).addIf(9, !getCurrentTimeline().isEmpty() && (hasNextMediaItem() || (isCurrentMediaItemLive() && isCurrentMediaItemDynamic())) && !isPlayingAd()).addIf(10, !isPlayingAd()).addIf(11, isCurrentMediaItemSeekable() && !isPlayingAd()).addIf(12, isCurrentMediaItemSeekable() && !isPlayingAd()).build();
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getBufferedPercentage() {
        long bufferedPosition = getBufferedPosition();
        long duration = getDuration();
        if (bufferedPosition == com.google.android.exoplayer2.C.TIME_UNSET || duration == com.google.android.exoplayer2.C.TIME_UNSET) {
            return 0;
        }
        if (duration == 0) {
            return 100;
        }
        return com.google.android.exoplayer2.util.Util.constrainValue((int) ((bufferedPosition * 100) / duration), 0, 100);
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getContentDuration() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        return currentTimeline.isEmpty() ? com.google.android.exoplayer2.C.TIME_UNSET : currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).getDurationMs();
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getCurrentLiveOffset() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        return (currentTimeline.isEmpty() || currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).windowStartTimeMs == com.google.android.exoplayer2.C.TIME_UNSET) ? com.google.android.exoplayer2.C.TIME_UNSET : (this.window.getCurrentUnixTimeMs() - this.window.windowStartTimeMs) - getContentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public final java.lang.Object getCurrentManifest() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return null;
        }
        return currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).manifest;
    }

    @Override // com.google.android.exoplayer2.Player
    public final com.google.android.exoplayer2.MediaItem getCurrentMediaItem() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return null;
        }
        return currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).mediaItem;
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final int getCurrentWindowIndex() {
        return getCurrentMediaItemIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public final com.google.android.exoplayer2.MediaItem getMediaItemAt(int i) {
        return getCurrentTimeline().getWindow(i, this.window).mediaItem;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getMediaItemCount() {
        return getCurrentTimeline().getWindowCount();
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getNextMediaItemIndex() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return -1;
        }
        return currentTimeline.getNextWindowIndex(getCurrentMediaItemIndex(), getRepeatModeForNavigation(), getShuffleModeEnabled());
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final int getNextWindowIndex() {
        return getNextMediaItemIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getPreviousMediaItemIndex() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return -1;
        }
        return currentTimeline.getPreviousWindowIndex(getCurrentMediaItemIndex(), getRepeatModeForNavigation(), getShuffleModeEnabled());
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final int getPreviousWindowIndex() {
        return getPreviousMediaItemIndex();
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean hasNext() {
        return hasNextMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean hasNextMediaItem() {
        return getNextMediaItemIndex() != -1;
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean hasNextWindow() {
        return hasNextMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean hasPrevious() {
        return hasPreviousMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean hasPreviousMediaItem() {
        return getPreviousMediaItemIndex() != -1;
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean hasPreviousWindow() {
        return hasPreviousMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isCommandAvailable(int i) {
        return getAvailableCommands().contains(i);
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isCurrentMediaItemDynamic() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        return !currentTimeline.isEmpty() && currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).isDynamic;
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isCurrentMediaItemLive() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        return !currentTimeline.isEmpty() && currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).isLive();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isCurrentMediaItemSeekable() {
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        return !currentTimeline.isEmpty() && currentTimeline.getWindow(getCurrentMediaItemIndex(), this.window).isSeekable;
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean isCurrentWindowDynamic() {
        return isCurrentMediaItemDynamic();
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean isCurrentWindowLive() {
        return isCurrentMediaItemLive();
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final boolean isCurrentWindowSeekable() {
        return isCurrentMediaItemSeekable();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && getPlaybackSuppressionReason() == 0;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void moveMediaItem(int i, int i2) {
        if (i != i2) {
            moveMediaItems(i, i + 1, i2);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final void next() {
        seekToNextMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final void previous() {
        seekToPreviousMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final void removeMediaItem(int i) {
        removeMediaItems(i, i + 1);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekBack() {
        seekToOffset(-getSeekBackIncrement());
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekForward() {
        seekToOffset(getSeekForwardIncrement());
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekTo(long j) {
        seekTo(getCurrentMediaItemIndex(), j);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekToDefaultPosition() {
        seekToDefaultPosition(getCurrentMediaItemIndex());
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekToDefaultPosition(int i) {
        seekTo(i, com.google.android.exoplayer2.C.TIME_UNSET);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekToNext() {
        if (getCurrentTimeline().isEmpty() || isPlayingAd()) {
            return;
        }
        if (hasNextMediaItem()) {
            seekToNextMediaItem();
        } else if (isCurrentMediaItemLive() && isCurrentMediaItemDynamic()) {
            seekToDefaultPosition();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekToNextMediaItem() {
        int nextMediaItemIndex = getNextMediaItemIndex();
        if (nextMediaItemIndex != -1) {
            seekToDefaultPosition(nextMediaItemIndex);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final void seekToNextWindow() {
        seekToNextMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekToPrevious() {
        if (getCurrentTimeline().isEmpty() || isPlayingAd()) {
            return;
        }
        boolean zHasPreviousMediaItem = hasPreviousMediaItem();
        if (!isCurrentMediaItemLive() || isCurrentMediaItemSeekable()) {
            if (!zHasPreviousMediaItem || getCurrentPosition() > getMaxSeekToPreviousPosition()) {
                seekTo(0L);
                return;
            }
        } else if (!zHasPreviousMediaItem) {
            return;
        }
        seekToPreviousMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final void seekToPreviousMediaItem() {
        int previousMediaItemIndex = getPreviousMediaItemIndex();
        if (previousMediaItemIndex != -1) {
            seekToDefaultPosition(previousMediaItemIndex);
        }
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public final void seekToPreviousWindow() {
        seekToPreviousMediaItem();
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItem(com.google.android.exoplayer2.MediaItem mediaItem) {
        setMediaItems(java.util.Collections.singletonList(mediaItem));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItem(com.google.android.exoplayer2.MediaItem mediaItem, long j) {
        setMediaItems(java.util.Collections.singletonList(mediaItem), 0, j);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItem(com.google.android.exoplayer2.MediaItem mediaItem, boolean z) {
        setMediaItems(java.util.Collections.singletonList(mediaItem), z);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItems(java.util.List<com.google.android.exoplayer2.MediaItem> list) {
        setMediaItems(list, true);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlaybackSpeed(float f2) {
        setPlaybackParameters(getPlaybackParameters().withSpeed(f2));
    }
}
