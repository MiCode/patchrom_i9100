.class Lcom/android/phone/OverturnTutorialIncallScreen$8;
.super Ljava/lang/Object;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$8;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 361
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OK button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$8;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/OverturnTutorialIncallScreen;I)I

    .line 364
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$8;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    #calls: Lcom/android/phone/OverturnTutorialIncallScreen;->startIncomingSound()V
    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$1100(Lcom/android/phone/OverturnTutorialIncallScreen;)V

    .line 365
    return-void
.end method
