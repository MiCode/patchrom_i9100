.class Landroid/webkit/WebView$DateTimePicker$5;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$DateTimePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$DateTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 5900
    iput-object p1, p0, Landroid/webkit/WebView$DateTimePicker$5;->this$1:Landroid/webkit/WebView$DateTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 5905
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker$5;->this$1:Landroid/webkit/WebView$DateTimePicker;

    iget-object v0, v0, Landroid/webkit/WebView$DateTimePicker;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v0}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 5906
    return-void
.end method
