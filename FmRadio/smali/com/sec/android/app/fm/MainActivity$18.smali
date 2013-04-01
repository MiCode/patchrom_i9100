.class Lcom/sec/android/app/fm/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3899
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "arg3"
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
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/high16 v2, -0x4080

    .line 3905
    if-nez p3, :cond_1

    .line 3909
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3910
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 3911
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->removeAllChannel()V

    .line 3913
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 3914
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #calls: Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->access$400(Lcom/sec/android/app/fm/MainActivity;F)V

    .line 3924
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$7000(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3928
    :goto_1
    return-void

    .line 3917
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3918
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 3919
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->clearNonFavChannel()V

    goto :goto_0

    .line 3925
    :catch_0
    move-exception v0

    .line 3926
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$18;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->removeDialog(I)V

    goto :goto_1
.end method
