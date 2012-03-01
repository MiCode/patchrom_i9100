.class Lcom/android/phone/OverturnTutorialIncallScreen$1;
.super Landroid/os/Handler;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OverturnTutorialIncallScreen;
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
    .line 81
    iput-object p1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 85
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/OverturnTutorialIncallScreen;)I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OVERTURN_TUTORIAL_SUCCESS message delivered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/16 v1, 0xa

    #setter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/OverturnTutorialIncallScreen;I)I

    .line 88
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/OverturnTutorialIncallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 90
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$102(Lcom/android/phone/OverturnTutorialIncallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->showDialog(I)V

    goto :goto_0

    .line 97
    :cond_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    iget-object v1, p0, Lcom/android/phone/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/OverturnTutorialIncallScreen;->mAnimationIndex:I
    invoke-static {v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$200(Lcom/android/phone/OverturnTutorialIncallScreen;)I

    move-result v1

    #calls: Lcom/android/phone/OverturnTutorialIncallScreen;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/phone/OverturnTutorialIncallScreen;->access$300(Lcom/android/phone/OverturnTutorialIncallScreen;I)V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
