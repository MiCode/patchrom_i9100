.class synthetic Lcom/android/server/VibratorService$4;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$os$SystemVibrator$MagnitudeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 929
    invoke-static {}, Landroid/os/SystemVibrator$MagnitudeType;->values()[Landroid/os/SystemVibrator$MagnitudeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/VibratorService$4;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    :try_start_0
    sget-object v0, Lcom/android/server/VibratorService$4;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/VibratorService$4;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/VibratorService$4;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/VibratorService$4;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->MaxMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
