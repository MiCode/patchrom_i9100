.class Lcom/android/sec_settings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #setter for: Lcom/android/sec_settings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/sec_settings/RadioInfo;->access$802(Lcom/android/sec_settings/RadioInfo;Z)Z

    .line 171
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$900(Lcom/android/sec_settings/RadioInfo;)V

    .line 172
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/sec_settings/RadioInfo;->access$500(Lcom/android/sec_settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 160
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$400(Lcom/android/sec_settings/RadioInfo;)V

    .line 155
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$000(Lcom/android/sec_settings/RadioInfo;)V

    .line 147
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$100(Lcom/android/sec_settings/RadioInfo;)V

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$200(Lcom/android/sec_settings/RadioInfo;)V

    .line 149
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$300(Lcom/android/sec_settings/RadioInfo;)V

    .line 150
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #setter for: Lcom/android/sec_settings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/sec_settings/RadioInfo;->access$602(Lcom/android/sec_settings/RadioInfo;Z)Z

    .line 165
    iget-object v0, p0, Lcom/android/sec_settings/RadioInfo$1;->this$0:Lcom/android/sec_settings/RadioInfo;

    #calls: Lcom/android/sec_settings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/sec_settings/RadioInfo;->access$700(Lcom/android/sec_settings/RadioInfo;)V

    .line 166
    return-void
.end method
