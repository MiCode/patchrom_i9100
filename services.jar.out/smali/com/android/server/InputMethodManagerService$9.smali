.class Lcom/android/server/InputMethodManagerService$9;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V
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
    .line 2922
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$9;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)V

    .line 2926
    return-void
.end method
