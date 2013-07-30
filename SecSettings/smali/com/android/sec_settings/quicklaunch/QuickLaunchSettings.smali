.class public Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;
.super Landroid/preference/PreferenceActivity;
.source "QuickLaunchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/sec_settings/quicklaunch/ShortcutPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    return-void
.end method

.method private clearShortcut(C)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method private createPreference(C)Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 256
    new-instance v0, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    invoke-direct {v0, p0, p1}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;-><init>(Landroid/content/Context;C)V

    .line 257
    .local v0, pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    iget-object v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    .line 247
    .local v0, pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    if-eqz v0, :cond_0

    .line 251
    .end local v0           #pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    :goto_0
    return-object v0

    .line 250
    .restart local v0       #pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    :cond_0
    const-string v1, "QuickLaunchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, p1}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    move-result-object v0

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 5

    .prologue
    .line 265
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 266
    .local v3, shortcutSeen:Landroid/util/SparseBooleanArray;
    const/4 v4, -0x1

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 269
    .local v1, keyMap:Landroid/view/KeyCharacterMap;
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, keyCode:I
    :goto_0
    if-ltz v0, :cond_2

    .line 271
    invoke-virtual {v1, v0}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 272
    .local v2, shortcut:C
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 278
    invoke-direct {p0, v2}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->createPreference(C)Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    goto :goto_1

    .line 280
    .end local v2           #shortcut:C
    :cond_2
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 17

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .local v1, c:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 355
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v13

    if-nez v13, :cond_1

    .line 290
    const-string v13, "QuickLaunchSettings"

    const-string v14, "Could not requery cursor when refreshing shortcuts."

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    .end local v1           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 299
    .restart local v1       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 300
    .local v8, noLongerBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 301
    .local v7, newBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 302
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-char v13, v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    .line 303
    .local v11, shortcut:C
    if-eqz v11, :cond_2

    .line 305
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getOrCreatePreference(C)Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    move-result-object v10

    .line 306
    .local v10, pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 313
    .local v12, title:Ljava/lang/CharSequence;
    const-string v13, "intent"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 314
    .local v5, intentColumn:I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, intentUri:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 317
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    :try_start_3
    invoke-static {v6, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 318
    .local v4, intent:Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v9, v4, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 319
    .local v3, info:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_3

    .line 320
    invoke-virtual {v3, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v12

    .line 326
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {v10, v12}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    const v13, 0x7f090663

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 331
    const/4 v13, 0x1

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 332
    if-eqz v8, :cond_2

    .line 335
    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 339
    .end local v5           #intentColumn:I
    .end local v6           #intentUri:Ljava/lang/String;
    .end local v9           #packageManager:Landroid/content/pm/PackageManager;
    .end local v10           #pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    .end local v11           #shortcut:C
    .end local v12           #title:Ljava/lang/CharSequence;
    :cond_4
    if-eqz v8, :cond_6

    .line 340
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, i:I
    :goto_3
    if-ltz v2, :cond_6

    .line 341
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 343
    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    int-to-char v11, v13

    .line 344
    .restart local v11       #shortcut:C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    .line 345
    .restart local v10       #pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    if-eqz v10, :cond_5

    .line 346
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->setHasBookmark(Z)V

    .line 340
    .end local v10           #pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    .end local v11           #shortcut:C
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 352
    .end local v2           #i:I
    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 354
    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 322
    .restart local v5       #intentColumn:I
    .restart local v6       #intentUri:Ljava/lang/String;
    .restart local v9       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v10       #pref:Lcom/android/sec_settings/quicklaunch/ShortcutPreference;
    .restart local v11       #shortcut:C
    .restart local v12       #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method private showClearDialog(Lcom/android/sec_settings/quicklaunch/ShortcutPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->hasBookmark()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p1}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v0

    iput-char v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@quicklaunch"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 243
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 218
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 225
    if-nez p3, :cond_1

    .line 226
    const-string v1, "QuickLaunchSettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    const-string v1, "com.android.settings.quicklaunch.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 231
    .local v0, shortcut:C
    invoke-direct {p0, v0, p3}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 234
    .end local v0           #shortcut:C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 181
    iget-char v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    iget-char v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->clearShortcut(C)V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 186
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->addPreferencesFromResource(I)V

    .line 99
    const-string v0, "shortcut_category"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;-><init>(Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    .line 102
    invoke-direct {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->initShortcutPreferences()V

    .line 103
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 104
    invoke-virtual {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 105
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090664

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090665

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090666

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090667

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 211
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 213
    .end local v0           #pref:Landroid/preference/Preference;
    :goto_0
    return v1

    .line 212
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_0
    check-cast v0, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-direct {p0, v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->showClearDialog(Lcom/android/sec_settings/quicklaunch/ShortcutPreference;)V

    .line 213
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 118
    invoke-virtual {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 196
    instance-of v1, p2, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 199
    :cond_0
    check-cast p2, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/sec_settings/quicklaunch/BookmarkPicker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    const-string v2, "com.android.settings.quicklaunch.SHORTCUT"

    invoke-virtual {p2}, Lcom/android/sec_settings/quicklaunch/ShortcutPreference;->getShortcut()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v1, v0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 164
    check-cast v0, Landroid/app/AlertDialog;

    .line 165
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v1, 0x7f090665

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 127
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mBookmarksObserver:Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    invoke-direct {p0}, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->refreshShortcuts()V

    .line 113
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 136
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/sec_settings/quicklaunch/QuickLaunchSettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    return-void
.end method
