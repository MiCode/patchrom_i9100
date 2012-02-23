.class Landroid/webkit/WebView$DateTimePicker$6;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 5895
    iput-object p1, p0, Landroid/webkit/WebView$DateTimePicker$6;->this$1:Landroid/webkit/WebView$DateTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5897
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 5898
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker$6;->this$1:Landroid/webkit/WebView$DateTimePicker;

    #calls: Landroid/webkit/WebView$DateTimePicker;->clear()V
    invoke-static {v0}, Landroid/webkit/WebView$DateTimePicker;->access$2600(Landroid/webkit/WebView$DateTimePicker;)V

    .line 5900
    :cond_0
    return-void
.end method
