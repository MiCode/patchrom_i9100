.class Lcom/android/sec_settings/fmm/Introduction$1;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/fmm/Introduction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/fmm/Introduction;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/sec_settings/fmm/Introduction$1;->this$0:Lcom/android/sec_settings/fmm/Introduction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const v3, 0x7f09091c

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/sec_settings/fmm/Introduction$1;->this$0:Lcom/android/sec_settings/fmm/Introduction;

    #getter for: Lcom/android/sec_settings/fmm/Introduction;->mDoNotShow:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/sec_settings/fmm/Introduction;->access$000(Lcom/android/sec_settings/fmm/Introduction;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 72
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 73
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 74
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    .line 76
    iget-object v1, p0, Lcom/android/sec_settings/fmm/Introduction$1;->this$0:Lcom/android/sec_settings/fmm/Introduction;

    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 78
    const-string v2, "pref_due_date"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/sec_settings/fmm/Introduction$1;->this$0:Lcom/android/sec_settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/Introduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/fmm/Introduction$1;->this$0:Lcom/android/sec_settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/Introduction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 90
    invoke-static {v4}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const-class v1, Lcom/android/sec_settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 98
    :goto_1
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/fmm/Introduction$1;->this$0:Lcom/android/sec_settings/fmm/Introduction;

    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/Introduction;->finish()V

    goto :goto_0

    .line 94
    :cond_2
    const-class v1, Lcom/android/sec_settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method
