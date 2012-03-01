.class Lcom/android/phone/InVTCallScreen$55;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 9852
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 9856
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9857
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9858
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10702(Lcom/android/phone/InVTCallScreen;I)I

    .line 9860
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9875
    :cond_0
    :goto_0
    return-void

    .line 9861
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9862
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$11000(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$10702(Lcom/android/phone/InVTCallScreen;I)I

    .line 9864
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto :goto_0

    .line 9869
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9870
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9873
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$55;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0
.end method
