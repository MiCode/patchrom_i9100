.class Lcom/android/server/CommonTimeManagementService$5;
.super Ljava/lang/Object;
.source "CommonTimeManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 143
    iput-object p1, p0, Lcom/android/server/CommonTimeManagementService$5;->this$0:Lcom/android/server/CommonTimeManagementService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/CommonTimeManagementService$5;->this$0:Lcom/android/server/CommonTimeManagementService;

    #calls: Lcom/android/server/CommonTimeManagementService;->handleNoInterfaceTimeout()V
    invoke-static {v0}, Lcom/android/server/CommonTimeManagementService;->access$300(Lcom/android/server/CommonTimeManagementService;)V

    return-void
.end method
