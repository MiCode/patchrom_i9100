.class Lcom/android/server/CommonTimeManagementService$3;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"

# interfaces
.implements Landroid/os/CommonTimeConfig$OnServerDiedListener;


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
    .line 133
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$3;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerDied()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$3;->this$0:Lcom/android/server/CommonTimeManagementService;

    #calls: Lcom/android/server/CommonTimeManagementService;->scheduleTimeConfigReconnect()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$100(Lcom/android/server/CommonTimeManagementService;)V

    .line 136
    return-void
.end method
