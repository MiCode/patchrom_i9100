.class Lcom/android/OriginalSettings/wifi/IwlanDialog$2;
.super Ljava/lang/Object;
.source "IwlanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/IwlanDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/IwlanDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/IwlanDialog$2;->this$0:Lcom/android/OriginalSettings/wifi/IwlanDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 257
    return-void
.end method
