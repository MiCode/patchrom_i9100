.class public final enum Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 249
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f09058c

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 253
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f09059f

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 256
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f09058f

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 260
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f090590

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 263
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f090591

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 267
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f09058a

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 271
    new-instance v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f090592

    sget-object v4, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 247
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerMessage"
    .parameter "leftMode"
    .parameter "rightMode"
    .parameter "footerMessage"
    .parameter "patternEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 287
    iput p3, p0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 288
    iput-object p4, p0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 289
    iput-object p5, p0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 290
    iput p6, p0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 291
    iput-boolean p7, p0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 292
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 247
    const-class v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/sec_settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
