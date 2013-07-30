.class public Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleRenderer"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mLocaleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "localeString"

    .prologue
    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mLocaleString:Ljava/lang/String;

    .line 176
    if-nez p2, :cond_0

    .line 177
    const v0, 0x7f09065a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const v0, 0x7f090659

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p2}, Lcom/android/sec_settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLocaleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public isMoreLanguages()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mLocaleString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    return-object v0
.end method
