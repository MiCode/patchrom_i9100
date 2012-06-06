.class Lcom/android/OriginalSettings/DateTimeSettings$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DateTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/OriginalSettings/DateTimeSettings$1;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings$1;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/DateTimeSettings;->access$100(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings$1;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/OriginalSettings/DateTimeSettings;->access$200(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/DateTimeSettings$1;->this$0:Lcom/android/OriginalSettings/DateTimeSettings;

    #getter for: Lcom/android/OriginalSettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/OriginalSettings/DateTimeSettings;->access$300(Lcom/android/OriginalSettings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 401
    return-void
.end method
