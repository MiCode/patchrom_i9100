.class Landroid/webkit/WebViewClassic$ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$ColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 6122
    iput-object p1, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$2;->this$1:Landroid/webkit/WebViewClassic$ColorPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 6124
    iget-object v0, p0, Landroid/webkit/WebViewClassic$ColorPickerDialog$2;->this$1:Landroid/webkit/WebViewClassic$ColorPickerDialog;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->updateColor(I)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;I)V

    .line 6125
    return-void
.end method
