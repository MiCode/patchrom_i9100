.class Lcom/android/OriginalSettings/inputmethod/InputMethodPreference$6;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference$6;->this$0:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference$6;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference$6;->val$chkPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    return-void
.end method
