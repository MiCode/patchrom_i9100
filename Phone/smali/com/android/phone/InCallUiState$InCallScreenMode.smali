.class public final enum Lcom/android/phone/InCallUiState$InCallScreenMode;
.super Ljava/lang/Enum;
.source "InCallUiState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InCallScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallUiState$InCallScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallUiState$InCallScreenMode;

.field public static final enum CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field public static final enum MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field public static final enum NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field public static final enum OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field public static final enum OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

.field public static final enum UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallUiState$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 104
    new-instance v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    const-string v1, "MANAGE_CONFERENCE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallUiState$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 109
    new-instance v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    const-string v1, "CALL_ENDED"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InCallUiState$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 113
    new-instance v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    const-string v1, "OTA_NORMAL"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InCallUiState$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 117
    new-instance v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    const-string v1, "OTA_ENDED"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InCallUiState$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 121
    new-instance v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallUiState$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->$VALUES:[Lcom/android/phone/InCallUiState$InCallScreenMode;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallUiState$InCallScreenMode;
    .locals 1
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallUiState$InCallScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallUiState$InCallScreenMode;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->$VALUES:[Lcom/android/phone/InCallUiState$InCallScreenMode;

    invoke-virtual {v0}, [Lcom/android/phone/InCallUiState$InCallScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallUiState$InCallScreenMode;

    return-object v0
.end method
