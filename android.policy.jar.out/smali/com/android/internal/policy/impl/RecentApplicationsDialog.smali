.class public Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.super Landroid/app/Dialog;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    }
.end annotation


# static fields
.field private static final DBG_FORCE_EMPTY_LIST:Z = false

.field private static final MAX_RECENT_TASKS:I = 0x10

.field private static final NUM_BUTTONS:I = 0x8

.field private static sStatusBar:Landroid/app/StatusBarManager;


# instance fields
.field mBroadcastIntentFilter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCleanup:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field final mIcons:[Landroid/widget/TextView;

.field mNoAppsText:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const v0, 0x1030301

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    .line 355
    new-instance v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$2;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method private reloadButtons()V
    .locals 26

    .prologue
    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 262
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 263
    .local v17, pm:Landroid/content/pm/PackageManager;
    const-string v23, "activity"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 265
    .local v5, am:Landroid/app/ActivityManager;
    const/16 v23, 0x10

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v18

    .line 268
    .local v18, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.HOME"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 273
    .local v8, homeInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "enterprise_policy"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 274
    .local v7, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v15, 0x1

    .line 275
    .local v15, isSettingsAllowed:Z
    if-eqz v7, :cond_0

    .line 276
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v15

    .line 280
    :cond_0
    new-instance v11, Lcom/android/internal/policy/impl/IconUtilities;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Lcom/android/internal/policy/impl/IconUtilities;-><init>(Landroid/content/Context;)V

    .line 285
    .local v11, iconUtilities:Lcom/android/internal/policy/impl/IconUtilities;
    const/4 v12, 0x0

    .line 286
    .local v12, index:I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v16

    .line 287
    .local v16, numTasks:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    const/16 v23, 0x8

    move/from16 v0, v23

    if-ge v12, v0, :cond_5

    .line 288
    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 293
    .local v13, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v14, Landroid/content/Intent;

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 294
    .local v14, intent:Landroid/content/Intent;
    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 295
    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 299
    :cond_1
    if-eqz v8, :cond_3

    .line 300
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 287
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.android.settings"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    if-eqz v15, :cond_2

    .line 316
    :cond_4
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v23

    const v24, -0x200001

    and-int v23, v23, v24

    const/high16 v24, 0x1000

    or-int v23, v23, v24

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 319
    .local v19, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v19, :cond_2

    .line 320
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 321
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 322
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 324
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_2

    if-eqz v10, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v22, v23, v12

    .line 326
    .local v22, tv:Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v11, v10}, Lcom/android/internal/policy/impl/IconUtilities;->createIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 328
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 329
    new-instance v20, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;-><init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V

    .line 330
    .local v20, tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    move-object/from16 v0, v20

    iput-object v13, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 331
    move-object/from16 v0, v20

    iput-object v14, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    .line 332
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 333
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setPressed(Z)V

    .line 335
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->clearFocus()V

    .line 336
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 342
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v19           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v20           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #tv:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v12, :cond_6

    const/16 v23, 0x0

    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_3
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ge v12, v0, :cond_7

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    move-object/from16 v23, v0

    aget-object v23, v23, v12

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 342
    :cond_6
    const/16 v23, 0x8

    goto :goto_2

    .line 348
    :cond_7
    return-void
.end method

.method private switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 206
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ltz v2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 210
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->info:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 220
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    const v3, 0x104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Recent"

    const-string v3, "Unable to launch recent task"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dismissAndSwitch()V
    .locals 4

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    array-length v1, v3

    .line 173
    .local v1, numIcons:I
    const/4 v2, 0x0

    .line 174
    .local v2, tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    :cond_0
    if-eqz v2, :cond_1

    .line 186
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 189
    return-void

    .line 178
    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    check-cast v2, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .line 180
    .restart local v2       #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    iget-object v3, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 196
    .local v1, b:Landroid/widget/TextView;
    if-ne v1, p1, :cond_1

    .line 197
    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;

    .line 198
    .local v4, tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->switchTo(Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;)V

    .line 202
    .end local v1           #b:Landroid/widget/TextView;
    .end local v4           #tag:Lcom/android/internal/policy/impl/RecentApplicationsDialog$RecentTag;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->dismiss()V

    .line 203
    return-void

    .line 195
    .restart local v1       #b:Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/high16 v12, 0x2

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    .local v2, context:Landroid/content/Context;
    sget-object v7, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-nez v7, :cond_0

    .line 96
    const-string v7, "statusbar"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/StatusBarManager;

    sput-object v7, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 100
    .local v6, window:Landroid/view/Window;
    invoke-virtual {v6, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 101
    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 102
    invoke-virtual {v6, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 104
    const-string v7, "Recents"

    invoke-virtual {v6, v7}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const v7, 0x109007f

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setContentView(I)V

    .line 108
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 109
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 111
    invoke-virtual {v6, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    invoke-virtual {v6, v9, v11}, Landroid/view/Window;->setFlags(II)V

    .line 114
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x10202fe

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 115
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x1020019

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v10

    .line 116
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const v7, 0x102001a

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v11

    .line 117
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x3

    const v7, 0x102001b

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 118
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x4

    const v7, 0x10202ff

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 119
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x5

    const v7, 0x1020300

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 120
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x6

    const v7, 0x1020301

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 121
    iget-object v8, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    const/4 v9, 0x7

    const v7, 0x1020302

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v8, v9

    .line 122
    const v7, 0x10202fd

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mNoAppsText:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    .local v0, arr$:[Landroid/widget/TextView;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 125
    .local v1, b:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v1           #b:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 131
    const/16 v7, 0x3d

    if-ne p1, v7, :cond_7

    .line 135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 136
    .local v0, backward:Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    array-length v5, v7

    .line 137
    .local v5, numIcons:I
    const/4 v4, 0x0

    .line 138
    .local v4, numButtons:I
    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_0
    if-eqz v4, :cond_2

    .line 142
    if-eqz v0, :cond_3

    add-int/lit8 v3, v4, -0x1

    .line 143
    .local v3, nextFocus:I
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 144
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/TextView;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 145
    if-eqz v0, :cond_4

    .line 146
    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x1

    rem-int v3, v7, v4

    .line 153
    :cond_1
    :goto_3
    if-eqz v0, :cond_6

    move v1, v6

    .line 154
    .local v1, direction:I
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    iget-object v7, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mIcons:[Landroid/widget/TextView;

    aget-object v7, v7, v3

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 165
    .end local v0           #backward:Z
    .end local v1           #direction:I
    .end local v2           #i:I
    .end local v3           #nextFocus:I
    .end local v4           #numButtons:I
    .end local v5           #numIcons:I
    :cond_2
    :goto_5
    return v6

    .line 142
    .restart local v0       #backward:Z
    .restart local v4       #numButtons:I
    .restart local v5       #numIcons:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 148
    .restart local v2       #i:I
    .restart local v3       #nextFocus:I
    :cond_4
    add-int/lit8 v7, v2, 0x1

    rem-int v3, v7, v4

    .line 150
    goto :goto_3

    .line 143
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    :cond_6
    const/4 v1, 0x2

    goto :goto_4

    .line 165
    .end local v0           #backward:Z
    .end local v2           #i:I
    .end local v3           #nextFocus:I
    .end local v4           #numButtons:I
    .end local v5           #numIcons:I
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_5
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 228
    invoke-direct {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->reloadButtons()V

    .line 229
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 246
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->sStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mCleanup:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method
