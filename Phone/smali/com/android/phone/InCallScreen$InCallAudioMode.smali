.class public final enum Lcom/android/phone/InCallScreen$InCallAudioMode;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallAudioMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$InCallAudioMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$InCallAudioMode;

.field public static final enum BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

.field public static final enum EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

.field public static final enum SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    new-instance v0, Lcom/android/phone/InCallScreen$InCallAudioMode;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    .line 390
    new-instance v0, Lcom/android/phone/InCallScreen$InCallAudioMode;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen$InCallAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    .line 391
    new-instance v0, Lcom/android/phone/InCallScreen$InCallAudioMode;

    const-string v1, "EARPIECE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallScreen$InCallAudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    .line 388
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/InCallScreen$InCallAudioMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->$VALUES:[Lcom/android/phone/InCallScreen$InCallAudioMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallAudioMode;
    .locals 1
    .parameter

    .prologue
    .line 388
    const-class v0, Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen$InCallAudioMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallScreen$InCallAudioMode;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/android/phone/InCallScreen$InCallAudioMode;->$VALUES:[Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$InCallAudioMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$InCallAudioMode;

    return-object v0
.end method
