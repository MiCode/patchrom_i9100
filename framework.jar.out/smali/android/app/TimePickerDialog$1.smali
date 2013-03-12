.class Landroid/app/TimePickerDialog$1;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/TimePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/TimePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    invoke-virtual {v1}, Landroid/app/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #getter for: Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;
    invoke-static {v1}, Landroid/app/TimePickerDialog;->access$000(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 135
    :cond_0
    iget-object v1, p0, Landroid/app/TimePickerDialog$1;->this$0:Landroid/app/TimePickerDialog;

    #getter for: Landroid/app/TimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;
    invoke-static {v1}, Landroid/app/TimePickerDialog;->access$000(Landroid/app/TimePickerDialog;)Landroid/widget/TimePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TimePicker;->clearFocus()V

    .line 136
    return-void
.end method
