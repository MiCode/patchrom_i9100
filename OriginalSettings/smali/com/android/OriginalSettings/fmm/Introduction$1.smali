.class Lcom/android/OriginalSettings/fmm/Introduction$1;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/fmm/Introduction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fmm/Introduction;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/Introduction$1;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 59
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/Introduction$1;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    #getter for: Lcom/android/OriginalSettings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/OriginalSettings/fmm/Introduction;->access$000(Lcom/android/OriginalSettings/fmm/Introduction;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 62
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 63
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    .line 65
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/Introduction$1;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    const-string v2, "pref_due_date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/Introduction$1;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 72
    const-class v1, Lcom/android/OriginalSettings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0717

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 75
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/Introduction$1;->this$0:Lcom/android/OriginalSettings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/Introduction;->finish()V

    .line 76
    return-void
.end method
