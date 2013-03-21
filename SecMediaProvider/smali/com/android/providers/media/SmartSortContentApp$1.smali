.class Lcom/android/providers/media/SmartSortContentApp$1;
.super Ljava/lang/Thread;
.source "SmartSortContentApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/SmartSortContentApp;->startScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/SmartSortContentApp;


# direct methods
.method constructor <init>(Lcom/android/providers/media/SmartSortContentApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/providers/media/SmartSortContentApp$1;->this$0:Lcom/android/providers/media/SmartSortContentApp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    const/16 v1, 0xb

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 71
    new-instance v0, Lcom/android/providers/media/SmartSortScanner;

    iget-object v1, p0, Lcom/android/providers/media/SmartSortContentApp$1;->this$0:Lcom/android/providers/media/SmartSortContentApp;

    invoke-direct {v0, v1}, Lcom/android/providers/media/SmartSortScanner;-><init>(Lcom/android/providers/media/SmartSortContentApp;)V

    .line 72
    .local v0, smartsortScanner:Lcom/android/providers/media/SmartSortScanner;
    invoke-virtual {v0}, Lcom/android/providers/media/SmartSortScanner;->sync()V

    .line 73
    return-void
.end method
