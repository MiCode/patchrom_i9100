.class Lcom/sec/android/app/camera/HistoryActivity$1;
.super Landroid/os/Handler;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/HistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/HistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/HistoryActivity$1;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity$1;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    #getter for: Lcom/sec/android/app/camera/HistoryActivity;->mHistory:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/camera/HistoryActivity;->access$100(Lcom/sec/android/app/camera/HistoryActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$1;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mAdapter:Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method
