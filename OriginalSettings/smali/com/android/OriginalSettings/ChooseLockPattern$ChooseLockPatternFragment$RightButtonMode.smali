.class final enum Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Confirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ConfirmDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Continue:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ContinueDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Ok:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


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

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 211
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Continue"

    const v2, 0x7f0b043f

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 212
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ContinueDisabled"

    const v2, 0x7f0b043f

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 213
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Confirm"

    const v2, 0x7f0b043c

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 214
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ConfirmDisabled"

    const v2, 0x7f0b043c

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 215
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Ok"

    const v2, 0x104000a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

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
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput p3, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    .line 223
    iput-boolean p4, p0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    .line 224
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1
    .parameter

    .prologue
    .line 210
    const-class v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v0}, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/OriginalSettings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method
