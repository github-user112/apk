package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public final class TrackSelectionUtil {

    public interface AdaptiveTrackSelectionFactory {
        com.google.android.exoplayer2.trackselection.ExoTrackSelection createAdaptiveTrackSelection(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition);
    }

    public static com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection) {
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (exoTrackSelection.isBlacklisted(i2, jElapsedRealtime)) {
                i++;
            }
        }
        return new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions(1, 0, length, i);
    }

    public static com.google.android.exoplayer2.trackselection.ExoTrackSelection[] createTrackSelectionsForDefinitions(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr, com.google.android.exoplayer2.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory adaptiveTrackSelectionFactory) {
        com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr = new com.google.android.exoplayer2.trackselection.ExoTrackSelection[definitionArr.length];
        boolean z = false;
        for (int i = 0; i < definitionArr.length; i++) {
            com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition = definitionArr[i];
            if (definition != null) {
                if (definition.tracks.length <= 1 || z) {
                    exoTrackSelectionArr[i] = new com.google.android.exoplayer2.trackselection.FixedTrackSelection(definition.group, definition.tracks[0], definition.type);
                } else {
                    exoTrackSelectionArr[i] = adaptiveTrackSelectionFactory.createAdaptiveTrackSelection(definition);
                    z = true;
                }
            }
        }
        return exoTrackSelectionArr;
    }

    public static com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters updateParametersWithOverride(com.google.android.exoplayer2.trackselection.DefaultTrackSelector.Parameters parameters, int i, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, boolean z, com.google.android.exoplayer2.trackselection.DefaultTrackSelector.SelectionOverride selectionOverride) {
        com.google.android.exoplayer2.trackselection.DefaultTrackSelector.ParametersBuilder rendererDisabled = parameters.buildUpon().clearSelectionOverrides(i).setRendererDisabled(i, z);
        if (selectionOverride != null) {
            rendererDisabled.setSelectionOverride(i, trackGroupArray, selectionOverride);
        }
        return rendererDisabled.build();
    }
}
