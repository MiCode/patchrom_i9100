.class Landroid/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/DatePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    #getter for: Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v1}, Landroid/app/DatePickerDialog;->access$000(Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    :cond_0
    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    #getter for: Landroid/app/DatePickerDialog;->mDatePicker:Landroid/widget/DatePicker;
    invoke-static {v1}, Landroid/app/DatePickerDialog;->access$000(Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/DatePicker;->clearFocus()V

    .line 132
    return-void
.end method
