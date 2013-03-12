.class Lcom/sec/android/internal/ims/IMSService$7;
.super Ljava/lang/Object;
.source "IMSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$7;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v1, "MOBILE"

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1100(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    .line 1655
    return-void
.end method
