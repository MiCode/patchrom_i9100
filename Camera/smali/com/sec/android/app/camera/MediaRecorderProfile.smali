.class public Lcom/sec/android/app/camera/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# static fields
.field private static final PROFILE_1280_720:I = 0x1

.field private static final PROFILE_176_144:I = 0x5

.field private static final PROFILE_1920_1080:I = 0x0

.field private static final PROFILE_320_240:I = 0x4

.field private static final PROFILE_640_480:I = 0x3

.field private static final PROFILE_720_480:I = 0x2

.field private static final PROFILE_MMS:I = 0x6

.field private static final PROPERTY_AUDIO_BITRATE:I = 0x7

.field private static final PROPERTY_AUDIO_ENCORDER:I = 0x6

.field private static final PROPERTY_AUDIO_NUM_CHANNELS:I = 0x8

.field private static final PROPERTY_AUDIO_SAMPLINGRATE:I = 0x9

.field private static final PROPERTY_VIDEO_BITRATE_FINE:I = 0x2

.field private static final PROPERTY_VIDEO_BITRATE_NORMAL:I = 0x3

.field private static final PROPERTY_VIDEO_BITRATE_SUPERFINE:I = 0x1

.field private static final PROPERTY_VIDEO_ENCORDER:I = 0x0

.field private static final PROPERTY_VIDEO_FRAME_RATE:I = 0x4

.field private static final PROPERTY_VIDEO_OUTPUT_FORMAT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field public final mOutputFormat:I

.field private mProfileTable:[[I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 11
    .parameter "activityContext"
    .parameter "quality"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0xa

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v3, 0x7

    new-array v3, v3, [[I

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v8

    new-array v4, v6, [I

    fill-array-data v4, :array_1

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_4

    aput-object v4, v3, v9

    new-array v4, v6, [I

    fill-array-data v4, :array_5

    aput-object v4, v3, v10

    const/4 v4, 0x6

    new-array v5, v6, [I

    fill-array-data v5, :array_6

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    .line 103
    const/4 v0, 0x2

    .line 104
    .local v0, propertyIndex:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 105
    .local v2, resolutionId:I
    const/4 v1, 0x3

    .line 108
    .local v1, qualityIndex:I
    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 131
    const/4 v0, 0x6

    .line 133
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 141
    :cond_0
    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 154
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v8

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    .line 156
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 157
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoBitRate"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 158
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoBitRate"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 165
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v9

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    .line 166
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    .line 167
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    .line 168
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    .line 171
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 175
    return-void

    .line 110
    :pswitch_1
    const/4 v0, 0x0

    .line 111
    goto/16 :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x1

    .line 114
    goto/16 :goto_0

    .line 116
    :pswitch_3
    const/4 v0, 0x2

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_4
    const/4 v0, 0x3

    .line 120
    goto/16 :goto_0

    .line 122
    :pswitch_5
    const/4 v0, 0x4

    .line 123
    goto/16 :goto_0

    .line 125
    :pswitch_6
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 137
    :cond_1
    const/16 v2, 0x13

    goto/16 :goto_1

    .line 143
    :pswitch_7
    const/4 v1, 0x1

    .line 144
    goto/16 :goto_2

    .line 146
    :pswitch_8
    const/4 v1, 0x2

    .line 147
    goto/16 :goto_2

    .line 149
    :pswitch_9
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto :goto_3

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    goto :goto_3

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x66t 0x3t 0x1t
        0xc0t 0xe1t 0xe4t 0x0t
        0x40t 0x5dt 0xc6t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x1bt 0xb7t 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0x12t 0x7at 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xa8t 0xa0t 0x34t 0x0t
        0x50t 0x3et 0x2bt 0x0t
        0x90t 0x10t 0x23t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x70t 0xf7t 0x2et 0x0t
        0xa8t 0xf4t 0x26t 0x0t
        0xb8t 0xcet 0x1et 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0xb4t 0xbt 0x0t
        0xe8t 0xc7t 0x9t 0x0t
        0x70t 0xe7t 0x7t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x2ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    .line 108
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 141
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
