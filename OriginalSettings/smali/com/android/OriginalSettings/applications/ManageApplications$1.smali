.class Lcom/android/settings/applications/ManageApplications$1;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$1;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p5, p0, Lcom/android/settings/applications/ManageApplications$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1163
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    .line 1165
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x200

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1167
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 1168
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1171
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$nm:Landroid/app/INotificationManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :goto_1
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1176
    iget-boolean v9, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_0

    .line 1178
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1180
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1167
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1189
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v3, filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v7, prefActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v7, v10}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1192
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 1195
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1192
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1197
    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkPolicyManager;->getAppsWithPolicy(I)[I

    move-result-object v8

    .line 1199
    .local v8, restrictedAppIds:[I
    move-object v2, v8

    .local v2, arr$:[I
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_3

    aget v4, v2, v5

    .line 1201
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/net/NetworkPolicyManager;->setAppPolicy(II)V

    .line 1199
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1203
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$1;->val$handler:Landroid/os/Handler;

    new-instance v10, Lcom/android/settings/applications/ManageApplications$1$1;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/ManageApplications$1$1;-><init>(Lcom/android/settings/applications/ManageApplications$1;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1220
    const/4 v9, 0x0

    return-object v9

    .line 1172
    .end local v2           #arr$:[I
    .end local v3           #filters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #prefActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v8           #restrictedAppIds:[I
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v9

    goto :goto_1
.end method
