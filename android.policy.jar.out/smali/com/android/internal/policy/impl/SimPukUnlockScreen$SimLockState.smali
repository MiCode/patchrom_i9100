.class final enum Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
.super Ljava/lang/Enum;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field public static final enum CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field public static final enum REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    const-string v1, "REQUIRE_NEW_PIN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    const-string v1, "CONFIRM_NEW_PIN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->$VALUES:[Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-class v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->$VALUES:[Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method
