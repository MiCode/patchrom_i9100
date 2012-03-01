.class Lcom/android/phone/InVTCallScreen$32;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
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
    .line 8963
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 10
    .parameter "state"
    .parameter "data"

    .prologue
    const/16 v4, 0x6c

    const v9, 0x7f0e0350

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8965
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Inside VTStackStateListener"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8966
    const-string v1, "InVTCallScreen:: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChanged State :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8968
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2

    .line 8970
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 8972
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8974
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8975
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e033b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 9291
    :cond_1
    :goto_0
    return-void

    .line 8978
    :cond_2
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_7

    .line 8981
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8983
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9200(Lcom/android/phone/InVTCallScreen;)V

    .line 8986
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8987
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Camera disabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8988
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e0252

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8995
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8997
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0

    .line 9000
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9001
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 9003
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, 0x3

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_0

    .line 9007
    :cond_7
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_11

    .line 9008
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9010
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$2402(Z)Z

    .line 9011
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$9300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9013
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 9014
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9015
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9016
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9600(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 9018
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 9019
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 9020
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 9021
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 9024
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 9025
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9026
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 9027
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 9028
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 9029
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 9031
    :cond_b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9037
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 9038
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 9039
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 9040
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 9041
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 9042
    :cond_e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 9043
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9800(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 9044
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9050
    :cond_f
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 9053
    :cond_10
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1194

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9060
    :cond_11
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_12

    .line 9061
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9063
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    .line 9064
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9065
    :cond_12
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_13

    .line 9066
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9068
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9070
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9071
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    .line 9075
    :cond_13
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_14

    .line 9076
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9078
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    .line 9079
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$2202(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9082
    :cond_14
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_15

    .line 9083
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_IC_START_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9088
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e0339

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 9090
    :cond_15
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_19

    .line 9091
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_IC_START_SUCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9093
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 9094
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 9096
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9098
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9101
    :cond_16
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9103
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 9104
    const-string v1, "InVTCallScreen"

    const-string v2, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9106
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9107
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9115
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 9116
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    .line 9118
    :cond_17
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9119
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10002(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9109
    :cond_18
    const-string v1, "InVTCallScreen"

    const-string v2, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9112
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1

    .line 9121
    :cond_19
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1b

    .line 9122
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_START_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9123
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e034d

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;I)V

    .line 9124
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9125
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9126
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 9127
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 9128
    :cond_1a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9129
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$10502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 9130
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 9134
    :cond_1b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1c

    .line 9135
    const-string v1, "InVTCallScreen"

    const-string v2, "onStateChanged: for H324M_REC_START_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9139
    :cond_1c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_RETRY_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1f

    .line 9141
    :cond_1d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v1, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v1, :cond_1e

    .line 9143
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 9145
    :cond_1e
    const-string v1, "InVTCallScreen:: "

    const-string v2, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9146
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v7, v1, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 9147
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 9148
    :cond_1f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_20

    .line 9149
    const-string v1, "InVTCallScreen:: "

    const-string v2, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9150
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9151
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 9152
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 9153
    :cond_20
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_24

    .line 9154
    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_STOP_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9155
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 9156
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10600(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 9157
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0e034f

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9168
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 9169
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 9171
    :cond_21
    new-array v0, v7, [Ljava/lang/String;

    .line 9172
    .local v0, path:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 9173
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Lcom/android/phone/InVTCallScreen$32$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$32$1;-><init>(Lcom/android/phone/InVTCallScreen$32;)V

    invoke-static {v1, v0, v8, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 9178
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9181
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9182
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10800(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    if-ne v1, v2, :cond_23

    .line 9184
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10900(Lcom/android/phone/InVTCallScreen;)V

    .line 9185
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10702(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 9163
    .end local v0           #path:[Ljava/lang/String;
    :cond_22
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_2

    .line 9186
    .restart local v0       #path:[Ljava/lang/String;
    :cond_23
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10700(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$11000(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 9188
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$11100(Lcom/android/phone/InVTCallScreen;)V

    .line 9189
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, -0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10702(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 9193
    .end local v0           #path:[Ljava/lang/String;
    :cond_24
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_27

    .line 9194
    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9195
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 9196
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9198
    :cond_25
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 9199
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9201
    :cond_26
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9205
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9206
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9207
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 9210
    :cond_27
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2a

    .line 9211
    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9212
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 9213
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9215
    :cond_28
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 9216
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9218
    :cond_29
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v4, v9}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 9222
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$10602(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9225
    :cond_2a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2c

    .line 9226
    const-string v1, "InVTCallScreen:: "

    const-string v2, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9227
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 9228
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 9230
    :cond_2b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9231
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 9235
    :cond_2c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2d

    .line 9237
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9238
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 9239
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    .line 9241
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 9242
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v2, 0x2

    #setter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$5902(Lcom/android/phone/InVTCallScreen;I)I

    goto/16 :goto_0

    .line 9244
    :cond_2d
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_2e

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1

    .line 9251
    :cond_2e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0e0339

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$9900(Lcom/android/phone/InVTCallScreen;I)V

    .line 9253
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>mHideCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 9254
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>>>>>previousSelectedType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 9255
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 9256
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_31

    .line 9257
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousSelectedType:I
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5900(Lcom/android/phone/InVTCallScreen;)I

    move-result v1

    if-ne v1, v7, :cond_30

    .line 9258
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9259
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$10202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 9267
    :goto_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 9268
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)V

    .line 9275
    :cond_2f
    :goto_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 9262
    :cond_30
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9263
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 9264
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$10400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 9271
    :cond_31
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$32;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_4
.end method
