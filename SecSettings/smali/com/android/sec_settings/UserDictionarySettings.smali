.class public Lcom/android/sec_settings/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/UserDictionarySettings$MyAdapter;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field protected mLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sec_settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 240
    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 154
    new-instance v0, Lcom/android/sec_settings/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400fb

    iget-object v3, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "word"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "shortcut"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/sec_settings/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/android/sec_settings/UserDictionarySettings;)V

    return-object v0

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method private createCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "locale"

    .prologue
    .line 140
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/sec_settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale is null"

    const/4 v4, 0x0

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    move-object v6, p1

    .line 147
    .local v6, queryLocale:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/sec_settings/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const-string v5, "UPPER(word)"

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 146
    .end local v6           #queryLocale:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5
    .parameter "word"
    .parameter "shortcut"
    .parameter "resolver"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "word=? AND shortcut is null OR shortcut=\'\'"

    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "word=? AND shortcut=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 221
    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "shortcut"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 211
    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 193
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v1, "mode"

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v0, "word"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "shortcut"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/sec_settings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 202
    const-class v1, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09064d

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 205
    return-void

    :cond_0
    move v0, v6

    .line 194
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 99
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_0

    move-object v6, v7

    .line 102
    .local v6, localeFromIntent:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_1

    move-object v5, v7

    .line 107
    .local v5, localeFromArguments:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_2

    .line 108
    move-object v4, v5

    .line 115
    .local v4, locale:Ljava/lang/String;
    :goto_2
    iput-object v4, p0, Lcom/android/sec_settings/UserDictionarySettings;->mLocale:Ljava/lang/String;

    .line 116
    invoke-direct {p0, v4}, Lcom/android/sec_settings/UserDictionarySettings;->createCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/sec_settings/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 117
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, emptyView:Landroid/widget/TextView;
    const v7, 0x7f090658

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/sec_settings/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 121
    .local v3, listView:Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/android/sec_settings/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 123
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0, v9}, Lcom/android/sec_settings/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 127
    return-void

    .line 99
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #emptyView:Landroid/widget/TextView;
    .end local v3           #listView:Landroid/widget/ListView;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #localeFromArguments:Ljava/lang/String;
    .end local v6           #localeFromIntent:Ljava/lang/String;
    :cond_0
    const-string v8, "locale"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 103
    .restart local v0       #arguments:Landroid/os/Bundle;
    .restart local v6       #localeFromIntent:Ljava/lang/String;
    :cond_1
    const-string v7, "locale"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 109
    .restart local v5       #localeFromArguments:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 110
    move-object v4, v6

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2

    .line 112
    .end local v4           #locale:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #locale:Ljava/lang/String;
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 171
    const/4 v1, 0x1

    const v2, 0x7f09064c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020178

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 174
    .local v0, actionItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 176
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 90
    const v0, 0x10900c5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 162
    invoke-direct {p0, p3}, Lcom/android/sec_settings/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, word:Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/sec_settings/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, shortcut:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0, v1, v0}, Lcom/android/sec_settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 181
    invoke-direct {p0, v2, v2}, Lcom/android/sec_settings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
