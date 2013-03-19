.class public Lcom/android/settings/DreamComponentPreference;
.super Landroid/preference/Preference;
.source "DreamComponentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DreamComponentPreference$DreamListAdapter;
    }
.end annotation


# instance fields
.field private final pm:Landroid/content/pm/PackageManager;

.field private final resolver:Landroid/content/ContentResolver;

.field private final sCollator:Ljava/text/Collator;

.field sResolveInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->sCollator:Ljava/text/Collator;

    .line 100
    new-instance v0, Lcom/android/settings/DreamComponentPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DreamComponentPreference$1;-><init>(Lcom/android/settings/DreamComponentPreference;)V

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->sResolveInfoComparator:Ljava/util/Comparator;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamComponentPreference;->resolver:Landroid/content/ContentResolver;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/DreamComponentPreference;->refreshFromSettings()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DreamComponentPreference;)Ljava/text/Collator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/DreamComponentPreference;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private refreshFromSettings()V
    .locals 6

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, cn:Landroid/content/ComponentName;
    const-string v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    .line 82
    .local v1, dm:Landroid/service/dreams/IDreamManager;
    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->getDreamComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, ex:Landroid/os/RemoteException;
    const-string v4, "(unknown)"

    invoke-virtual {p0, v4}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 92
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 93
    :catch_2
    move-exception v3

    .line 94
    .local v3, ex2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "(unknown)"

    invoke-virtual {p0, v4}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 208
    new-instance v1, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;-><init>(Lcom/android/settings/DreamComponentPreference;Landroid/content/Context;)V

    .line 209
    .local v1, list:Lcom/android/settings/DreamComponentPreference$DreamListAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DreamComponentPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/DreamComponentPreference$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/DreamComponentPreference$2;-><init>(Lcom/android/settings/DreamComponentPreference;Lcom/android/settings/DreamComponentPreference$DreamListAdapter;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 234
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 235
    return-void
.end method
