.class Lcom/android/phone/InVTCallScreen$2;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


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
    .line 900
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 905
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handler: ignoring message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; we\'re destroyed!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1314
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 910
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 911
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Handler: handling message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " while not in foreground"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 921
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 922
    .local v3, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    goto :goto_0

    .line 1043
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 924
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/InVTCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 929
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 933
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen ::PHONE_DISCONNECT - Processing started"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 938
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    .line 941
    :cond_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 942
    .local v6, disconectResult:Landroid/os/AsyncResult;
    iget-object v4, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 943
    .local v4, c:Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_6

    .line 944
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v10

    .line 945
    .local v10, o:Ljava/lang/Object;
    instance-of v0, v10, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object v7, v10

    .line 946
    check-cast v7, Lcom/android/internal/telephony/CallerInfo;

    .line 947
    .local v7, info:Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 949
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v18, "InVTCallScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getCallNumber : voicemail - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    #setter for: Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 958
    .end local v7           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #o:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1600(Lcom/android/phone/InVTCallScreen;)V

    .line 961
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/Message;

    invoke-direct/range {v19 .. v19}, Landroid/os/Message;-><init>()V

    #setter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1802(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 964
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1902(Z)Z

    .line 965
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2002(Z)Z

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2100(Lcom/android/phone/InVTCallScreen;)I

    move-result v18

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen ::PHONE_DISCONNECT - DuringCall - Stoping VT Call"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 978
    :cond_8
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2400()Z

    move-result v18

    if-nez v18, :cond_0

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen : PHONE_DISCONNECT - DuringCall - continueOnDisconnection()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 985
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "InVTCallScreen ::PHONE_DISCONNECT - onDisconnect()"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 993
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v18

    if-nez v18, :cond_b

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2500(Lcom/android/phone/InVTCallScreen;)V

    .line 999
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 997
    :cond_b
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    goto :goto_1

    .line 1012
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v6           #disconectResult:Landroid/os/AsyncResult;
    :sswitch_5
    const-string v18, "InVTCallScreen"

    const-string v19, "EVENT_HEADSET_PLUG_STATE_CHANGED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1014
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v18

    if-eqz v18, :cond_0

    if-eqz v3, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2800(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 1035
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 1047
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->onMMICancel()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1058
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/MmiCode;

    .line 1061
    .local v9, mmiCode:Lcom/android/internal/telephony/MmiCode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    .line 1062
    .local v11, phoneType:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v3, v9, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 1065
    :cond_d
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_0

    .line 1066
    invoke-interface {v9}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1069
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1072
    :cond_e
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "Got MMI_COMPLETE, but Call not exist... so end VT Call Screen"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1073
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    goto/16 :goto_0

    .line 1080
    .end local v9           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v11           #phoneType:I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    #calls: Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/InVTCallScreen;->access$3200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 1092
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3300(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1097
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 1101
    :sswitch_b
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3400()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1107
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 1111
    :sswitch_c
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3400()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "TOUCH_LOCK_TIMER..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1117
    :sswitch_d
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3400()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1127
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1128
    :cond_12
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1129
    const-string v18, "InVTCallScreen"

    const-string v19, "During Call BT or EarPhone is not connected, then switch on the speaker. "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 1137
    :sswitch_e
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1139
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 1142
    .local v5, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v5, :cond_0

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1151
    .end local v5           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_f
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1153
    :cond_14
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v18

    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1155
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateScreen()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3500(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1175
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1176
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1178
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3600(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$3602(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1185
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 1190
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3800(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1193
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$3900(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1197
    :sswitch_14
    const-string v18, "InVTCallScreen"

    const-string v19, "mHandler:Response Received from Gallery"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)V

    .line 1199
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1203
    :sswitch_15
    const-string v18, "InVTCallScreen"

    const-string v19, "mHandler:Response on low memory"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1100(Lcom/android/phone/InVTCallScreen;)V

    .line 1210
    :cond_16
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4200(Lcom/android/phone/InVTCallScreen;Z)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4502(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4602(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1207
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$1200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$1300(Lcom/android/phone/InVTCallScreen;Z)V

    goto :goto_2

    .line 1222
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)V

    .line 1223
    invoke-static {}, Lcom/android/phone/PickImageFromGallery;->unregisterForImageGalleryResponse()V

    goto/16 :goto_0

    .line 1227
    :sswitch_17
    const-string v18, "InVTCallScreen"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mHandler:start recording image casting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Image:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Video:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectImg:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 1229
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5002(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/InVTCallScreen;->show_camera()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$4400(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 1232
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preset_name"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1233
    .local v13, preset_name:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 1234
    const-string v18, "photo"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1b

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preset_path"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1236
    .local v12, presetImageSrc:Ljava/lang/String;
    if-eqz v12, :cond_1a

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1239
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1241
    .end local v12           #presetImageSrc:Ljava/lang/String;
    :cond_1b
    const-string v18, "Default"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1c

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1243
    :cond_1c
    const-string v18, "video"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_20

    .line 1244
    const/16 v17, 0x0

    .line 1245
    .local v17, videoUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "preset_video_path"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1246
    .local v15, uriString:Ljava/lang/String;
    if-eqz v15, :cond_1f

    .line 1247
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1248
    if-eqz v17, :cond_1e

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #calls: Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$5200(Lcom/android/phone/InVTCallScreen;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16

    .line 1250
    .local v16, videoPath:Ljava/lang/String;
    if-eqz v16, :cond_1d

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1255
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "Video path is null, so setting Default Image "

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1259
    .end local v16           #videoPath:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1262
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1265
    .end local v15           #uriString:Ljava/lang/String;
    .end local v17           #videoUri:Landroid/net/Uri;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const-string v19, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    #calls: Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    .end local v13           #preset_name:Ljava/lang/String;
    :sswitch_18
    new-instance v18, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;-><init>(Lcom/android/phone/InVTCallScreen;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "start"

    aput-object v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1277
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v18

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1281
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1287
    :sswitch_1a
    const-string v18, "InVTCallScreen"

    const-string v19, "STOP_CAPTURE_IMAGE_ANIMATION:: Stop image animation"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 1292
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Landroid/telephony/ServiceState;

    .line 1293
    .local v14, state:Landroid/telephony/ServiceState;
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v18

    if-nez v18, :cond_0

    .line 1298
    .end local v14           #state:Landroid/telephony/ServiceState;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x97

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x97

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1301
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1302
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$500()Z

    move-result v18

    if-eqz v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "STATE_IN_SERVICE : start call "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1303
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v19}, Lcom/android/phone/InVTCallScreen;->access$5702(Lcom/android/phone/InVTCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1308
    .local v8, intent:Landroid/content/Intent;
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen$2;->this$0:Lcom/android/phone/InVTCallScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 922
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_1
        0x34 -> :sswitch_7
        0x35 -> :sswitch_6
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_8
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_9
        0x6e -> :sswitch_2
        0x6f -> :sswitch_a
        0x70 -> :sswitch_b
        0x71 -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x75 -> :sswitch_0
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
        0x7b -> :sswitch_13
        0x7c -> :sswitch_14
        0x7d -> :sswitch_15
        0x7e -> :sswitch_17
        0x80 -> :sswitch_1a
        0x81 -> :sswitch_16
        0x96 -> :sswitch_1b
        0x97 -> :sswitch_1c
        0x3e7 -> :sswitch_18
        0x458 -> :sswitch_19
        0x270f -> :sswitch_0
    .end sparse-switch
.end method
