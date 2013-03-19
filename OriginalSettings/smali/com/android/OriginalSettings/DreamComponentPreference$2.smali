.class Lcom/android/settings/DreamComponentPreference$2;
.super Ljava/lang/Object;
.source "DreamComponentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DreamComponentPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DreamComponentPreference;

.field final synthetic val$list:Lcom/android/settings/DreamComponentPreference$DreamListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/DreamComponentPreference;Lcom/android/settings/DreamComponentPreference$DreamListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/DreamComponentPreference$2;->this$0:Lcom/android/settings/DreamComponentPreference;

    iput-object p2, p0, Lcom/android/settings/DreamComponentPreference$2;->val$list:Lcom/android/settings/DreamComponentPreference$DreamListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 215
    iget-object v5, p0, Lcom/android/settings/DreamComponentPreference$2;->val$list:Lcom/android/settings/DreamComponentPreference$DreamListAdapter;

    invoke-virtual {v5, p2}, Lcom/android/settings/DreamComponentPreference$DreamListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 216
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 218
    .local v3, pn:Ljava/lang/String;
    :goto_0
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 219
    .local v2, n:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/settings/DreamComponentPreference$2;->this$0:Lcom/android/settings/DreamComponentPreference;

    iget-object v6, p0, Lcom/android/settings/DreamComponentPreference$2;->this$0:Lcom/android/settings/DreamComponentPreference;

    #getter for: Lcom/android/settings/DreamComponentPreference;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/DreamComponentPreference;->access$000(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/DreamComponentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    const-string v5, "dreams"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    .line 227
    .local v1, dm:Landroid/service/dreams/IDreamManager;
    :try_start_0
    invoke-interface {v1, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponent(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_2
    return-void

    .line 216
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #dm:Landroid/service/dreams/IDreamManager;
    .end local v2           #n:Ljava/lang/String;
    .end local v3           #pn:Ljava/lang/String;
    :cond_0
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 218
    .restart local v3       #pn:Ljava/lang/String;
    :cond_1
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 228
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v1       #dm:Landroid/service/dreams/IDreamManager;
    .restart local v2       #n:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method
