.class public Lcom/android/server/FMRadioServiceFeature;
.super Ljava/lang/Object;
.source "FMRadioServiceFeature.java"


# static fields
.field public static final BANDWIDTHAS_76000_108000:Ljava/lang/String; = "76000_108000"

.field public static final BANDWIDTHAS_76000_90000:Ljava/lang/String; = "76000_90000"

.field public static final BANDWIDTHAS_87500_108000:Ljava/lang/String; = "87500_108000"

.field public static final FEATURE_BANDWIDTH:Ljava/lang/String;

.field public static final FEATURE_DECONSTANT:I

.field public static final FEATURE_FREQUENCYSPACE:I

.field public static final FEATURE_SETLOCALTUNNING:Ljava/lang/String;

.field public static sCscFeature:Lcom/sec/android/app/CscFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    .line 15
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_SetLocalTunning"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_BandWidthAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_FrequencySpaceAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    .line 19
    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_FMRadio_DeconstantAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
