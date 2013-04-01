.class Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$5;
.super Ljava/lang/Object;
.source "DeleteFileListPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity$5;->this$0:Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->selectAll()V
    invoke-static {v0}, Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;->access$500(Lcom/sec/android/app/fm/DeleteFileListPlayerActivity;)V

    .line 394
    return-void
.end method
