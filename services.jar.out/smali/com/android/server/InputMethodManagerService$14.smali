.class Lcom/android/server/InputMethodManagerService$14;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showSIPInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4382
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$14;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 4384
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$14;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService;->hideSIPInformationDialog()V

    .line 4385
    return-void
.end method
