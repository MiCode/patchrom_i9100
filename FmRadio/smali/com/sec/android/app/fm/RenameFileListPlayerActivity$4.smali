.class Lcom/sec/android/app/fm/RenameFileListPlayerActivity$4;
.super Ljava/lang/Object;
.source "RenameFileListPlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "list"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileListPlayerActivity$4;->this$0:Lcom/sec/android/app/fm/RenameFileListPlayerActivity;

    #calls: Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->createRenameDialog(J)Lcom/sec/android/app/fm/ui/RenameDialog;
    invoke-static {v0, p4, p5}, Lcom/sec/android/app/fm/RenameFileListPlayerActivity;->access$100(Lcom/sec/android/app/fm/RenameFileListPlayerActivity;J)Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 322
    return-void
.end method
