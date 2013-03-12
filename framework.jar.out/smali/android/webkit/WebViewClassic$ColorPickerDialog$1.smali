.class Landroid/webkit/WebViewClassic$ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$ColorPickerDialog;

.field final synthetic val$gridViewColors:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$ColorPickerDialog;Landroid/widget/GridView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6113
    iput-object p1, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$1;->this$1:Landroid/webkit/WebViewClassic$ColorPickerDialog;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$1;->val$gridViewColors:Landroid/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
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
    .line 6116
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$1;->this$1:Landroid/webkit/WebViewClassic$ColorPickerDialog;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic$ColorPickerDialog;->dismiss()V

    .line 6117
    iget-object v1, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$1;->val$gridViewColors:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 6118
    .local v0, color:Ljava/lang/Integer;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$1;->this$1:Landroid/webkit/WebViewClassic$ColorPickerDialog;

    iget-object v1, v1, Landroid/webkit/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Landroid/webkit/WebViewClassic;->updateColor(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;I)V

    .line 6119
    return-void
.end method
