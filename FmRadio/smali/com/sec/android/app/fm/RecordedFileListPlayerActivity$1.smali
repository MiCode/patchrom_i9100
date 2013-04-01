.class Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$1;
.super Ljava/lang/Object;
.source "RecordedFileListPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$1;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity$1;->this$0:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->hideVolumePanel()V
    invoke-static {v0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->access$000(Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;)V

    .line 177
    return-void
.end method
