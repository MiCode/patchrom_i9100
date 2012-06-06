.class public Lcom/android/OriginalSettings/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Lcom/android/OriginalSettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddedWordAlready:Z

.field private mAutoReturn:Z

.field private mCursor:Landroid/database/Cursor;

.field private mDialogEditingWord:Ljava/lang/String;

.field private mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/UserDictionarySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mAutoReturn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/UserDictionarySettings;->onAddOrEditFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/UserDictionarySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 190
    new-instance v0, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f04009b

    iget-object v3, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_id"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/OriginalSettings/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0xe1t 0x1t 0x8t 0x7ft
    .end array-data
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "locale"

    .prologue
    .line 176
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/OriginalSettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale is null"

    const/4 v4, 0x0

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 182
    :cond_0
    if-eqz p1, :cond_1

    move-object v6, p1

    .line 183
    .local v6, queryLocale:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/OriginalSettings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 182
    .end local v6           #queryLocale:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private deleteWord(Ljava/lang/String;)V
    .locals 5
    .parameter "word"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 228
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onAddOrEditFinished(Ljava/lang/String;)V
    .locals 6
    .parameter "word"

    .prologue
    const/16 v5, 0xfa

    const/4 v4, 0x1

    .line 275
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/UserDictionarySettings;->deleteWord(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t requery on already-closed cursor."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v5, v3}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 296
    .local v0, prevLocale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5, v4}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    .line 299
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    goto :goto_0

    .line 304
    .end local v0           #prevLocale:Ljava/util/Locale;
    :cond_3
    iput-boolean v4, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 305
    return-void
.end method

.method private showAddOrEditDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "editingWord"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/UserDictionarySettings;->showDialog(I)V

    .line 222
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "UserDictionarySettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/OriginalSettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 110
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    move-object v6, v7

    .line 113
    .local v6, localeFromIntent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_2

    move-object v5, v7

    .line 118
    .local v5, localeFromArguments:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    .line 119
    move-object v4, v5

    .line 126
    .local v4, locale:Ljava/lang/String;
    :goto_2
    iput-object v4, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 127
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 128
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, emptyView:Landroid/widget/TextView;
    const v7, 0x7f0b04df

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 132
    .local v3, listView:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 134
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    const-string v7, "DIALOG_EDITING_WORD"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    .line 140
    const-string v7, "DIALOG_ADDED_WORD"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mAddedWordAlready:Z

    .line 142
    :cond_0
    return-void

    .line 110
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #emptyView:Landroid/widget/TextView;
    .end local v3           #listView:Landroid/widget/ListView;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #localeFromArguments:Ljava/lang/String;
    .end local v6           #localeFromIntent:Ljava/lang/String;
    :cond_1
    const-string v8, "locale"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 114
    .restart local v0       #arguments:Landroid/os/Bundle;
    .restart local v6       #localeFromIntent:Ljava/lang/String;
    :cond_2
    const-string v7, "locale"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 120
    .restart local v5       #localeFromArguments:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 121
    move-object v4, v6

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2

    .line 123
    .end local v4           #locale:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    .local v3, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 239
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040041

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, content:Landroid/view/View;
    const v6, 0x7f080093

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 241
    .local v4, editText:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v6, 0x10001

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 246
    iget-object v6, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    if-eqz v6, :cond_0

    const v6, 0x7f0b04dc

    :goto_0
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/OriginalSettings/UserDictionarySettings$2;

    invoke-direct {v8, p0, v4, v0}, Lcom/android/OriginalSettings/UserDictionarySettings$2;-><init>(Lcom/android/OriginalSettings/UserDictionarySettings;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/OriginalSettings/UserDictionarySettings$1;

    invoke-direct {v8, p0, v0}, Lcom/android/OriginalSettings/UserDictionarySettings$1;-><init>(Lcom/android/OriginalSettings/UserDictionarySettings;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 261
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 263
    return-object v2

    .line 246
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_0
    const v6, 0x7f0b04db

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 206
    const/4 v1, 0x1

    const v2, 0x7f0b04da

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020065

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 209
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 211
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 101
    const v0, 0x1090078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 198
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, word:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mAddedWordAlready:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "word"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, word:Ljava/lang/String;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mAutoReturn:Z

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;)V

    .line 156
    .end local v1           #word:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string v0, "DIALOG_EDITING_WORD"

    iget-object v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mDialogEditingWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "DIALOG_ADDED_WORD"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/UserDictionarySettings;->mAddedWordAlready:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method
