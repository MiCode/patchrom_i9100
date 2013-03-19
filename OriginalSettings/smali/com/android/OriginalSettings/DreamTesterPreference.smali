.class public Lcom/android/settings/DreamTesterPreference;
.super Landroid/preference/Preference;
.source "DreamTesterPreference.java"


# instance fields
.field private final pm:Landroid/content/pm/PackageManager;

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/DreamTesterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamTesterPreference;->pm:Landroid/content/pm/PackageManager;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/DreamTesterPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DreamTesterPreference;->resolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 6

    .prologue
    .line 66
    iget-object v3, p0, Lcom/android/settings/DreamTesterPreference;->resolver:Landroid/content/ContentResolver;

    const-string v4, "screensaver_component"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, component:Ljava/lang/String;
    const-string v3, "DreamTesterPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 70
    .local v0, cn:Landroid/content/ComponentName;
    const-string v3, "DreamTesterPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v3, "dreams"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v2

    .line 81
    .local v2, dm:Landroid/service/dreams/IDreamManager;
    :try_start_0
    invoke-interface {v2, v0}, Landroid/service/dreams/IDreamManager;->testDream(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v2           #dm:Landroid/service/dreams/IDreamManager;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v2       #dm:Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
