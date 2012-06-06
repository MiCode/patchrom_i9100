.class final enum Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum CancelDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Gone:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Retry:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f0b0175

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 188
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f0b0175

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 189
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f0b043e

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 190
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f0b043e

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 191
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 186
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->CancelDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput p3, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 200
    iput-boolean p4, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1
    .parameter

    .prologue
    .line 186
    const-class v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
