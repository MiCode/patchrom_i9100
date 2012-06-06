.class Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference$1;
.super Ljava/lang/Object;
.source "CheckBoxAndSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference$1;->this$0:Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference$1;->this$0:Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/inputmethod/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    .line 56
    return-void
.end method
