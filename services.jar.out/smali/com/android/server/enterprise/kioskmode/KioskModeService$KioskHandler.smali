.class final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 146
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 147
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 155
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 156
    .local v2, enableData:Landroid/os/Bundle;
    const-string v4, "package"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, kioskPackage:Ljava/lang/String;
    const-string v4, "adminuid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, adminUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(ILjava/lang/String;)V
    invoke-static {v4, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$100(Lcom/android/server/enterprise/kioskmode/KioskModeService;ILjava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0           #adminUid:I
    .end local v2           #enableData:Landroid/os/Bundle;
    .end local v3           #kioskPackage:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 163
    .local v1, disableData:Landroid/os/Bundle;
    const-string v4, "adminuid"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 164
    .restart local v0       #adminUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    const/4 v5, 0x2

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V
    invoke-static {v4, v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;II)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
