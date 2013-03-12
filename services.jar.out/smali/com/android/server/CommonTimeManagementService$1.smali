.class Lcom/android/server/CommonTimeManagementService$1;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "CommonTimeManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CommonTimeManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CommonTimeManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/CommonTimeManagementService;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    #calls: Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$000(Lcom/android/server/CommonTimeManagementService;)V

    .line 118
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 1
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    #calls: Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$000(Lcom/android/server/CommonTimeManagementService;)V

    .line 115
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .parameter "iface"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    #calls: Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$000(Lcom/android/server/CommonTimeManagementService;)V

    .line 121
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .parameter "iface"
    .parameter "up"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$1;->this$0:Lcom/android/server/CommonTimeManagementService;

    #calls: Lcom/android/server/CommonTimeManagementService;->reevaluateServiceState()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$000(Lcom/android/server/CommonTimeManagementService;)V

    .line 112
    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "limitName"
    .parameter "iface"

    .prologue
    .line 122
    return-void
.end method
