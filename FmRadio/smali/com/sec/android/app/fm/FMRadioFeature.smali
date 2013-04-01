.class public Lcom/sec/android/app/fm/FMRadioFeature;
.super Ljava/lang/Object;
.source "FMRadioFeature.java"


# static fields
.field public static final FEATURE_BANDWIDTH:Ljava/lang/String;

.field public static final FEATURE_DECONSTANT:I

.field public static final FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

.field public static FEATURE_DISABLEMENUAF:Z

.field public static final FEATURE_DISABLEMENURDS:Z

.field public static final FEATURE_DISABLERTPLUSINFO:Z

.field private static FEATURE_FREQUENCYSPACE:I

.field public static final FEATURE_RECORDINGVOLUME:I

.field public static sCscFeature:Lcom/sec/android/app/CscFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    .line 26
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_FrequencySpaceAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_FREQUENCYSPACE:I

    .line 27
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_DefaultChannelAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_DisableMenuAf"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENUAF:Z

    .line 29
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_DisableMenuRds"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLEMENURDS:Z

    .line 30
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_BandWidthAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_DeconstantAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DECONSTANT:I

    .line 32
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_RecordingVolumeAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_RECORDINGVOLUME:I

    .line 34
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_DisableRTPlusInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ForceApply_ThailandFunction()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x32

    sput v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_FREQUENCYSPACE:I

    .line 45
    return-void
.end method

.method public static GetFrequencySpace()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_FREQUENCYSPACE:I

    return v0
.end method

.method public static Recovery_ThailandFunction()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_FrequencySpaceAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_FREQUENCYSPACE:I

    .line 50
    return-void
.end method
