.class public Landroid/speech/tts/TtsEngines;
.super Ljava/lang/Object;
.source "TtsEngines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TtsEngines$EngineInfoComparator;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOCALE_DELIMITER:Ljava/lang/String; = "-"

.field private static final TAG:Ljava/lang/String; = "TtsEngines"

.field private static final XML_TAG_NAME:Ljava/lang/String; = "tts-engine"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private getDefaultLocale()Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 365
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, defaultLocale:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const-string v2, "TtsEngines"

    const-string v3, "Default locale is empty."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v2, ""

    .line 382
    :goto_0
    return-object v2

    .line 371
    :cond_0
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 382
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 376
    goto :goto_0
.end method

.method private getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 4
    .parameter "resolve"
    .parameter "pm"

    .prologue
    .line 239
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 240
    .local v2, service:Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_1

    .line 241
    new-instance v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-direct {v0}, Landroid/speech/tts/TextToSpeech$EngineInfo;-><init>()V

    .line 244
    .local v0, engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 245
    invoke-virtual {v2, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    .local v1, label:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    :goto_0
    iput-object v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    .line 247
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getIconResource()I

    move-result v3

    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->icon:I

    .line 248
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    iput v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    .line 249
    invoke-direct {p0, v2}, Landroid/speech/tts/TtsEngines;->isSystemEngine(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    .line 253
    .end local v0           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v1           #label:Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 246
    .restart local v0       #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .restart local v1       #label:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 253
    .end local v0           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v1           #label:Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getV1Locale()Ljava/lang/String;
    .locals 7

    .prologue
    .line 334
    iget-object v5, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 336
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v5, "tts_default_lang"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, lang:Ljava/lang/String;
    const-string v5, "tts_default_country"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, country:Ljava/lang/String;
    const-string v5, "tts_default_variant"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, variant:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    invoke-direct {p0}, Landroid/speech/tts/TtsEngines;->getDefaultLocale()Ljava/lang/String;

    move-result-object v3

    .line 355
    :cond_0
    :goto_0
    return-object v3

    .line 344
    :cond_1
    move-object v3, v2

    .line 345
    .local v3, v1Locale:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isSystemEngine(Landroid/content/pm/ServiceInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 140
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 141
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "prefValue"
    .parameter "engineName"

    .prologue
    const/4 v6, 0x0

    .line 392
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-object v6

    .line 396
    :cond_1
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, prefValues:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 399
    .local v5, value:Ljava/lang/String;
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 400
    .local v1, delimiter:I
    if-lez v1, :cond_2

    .line 401
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 402
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 398
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v4, 0x0

    .line 314
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v0, v2

    .line 315
    .local v0, returnVal:[Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, split:[Ljava/lang/String;
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    .end local v1           #split:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 11
    .parameter "si"
    .parameter "pm"

    .prologue
    const/4 v7, 0x0

    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "android.speech.tts"

    invoke-virtual {p1, p2, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 194
    if-nez v3, :cond_2

    .line 195
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No meta-data found for :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 232
    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    move-object v5, v7

    :cond_1
    :goto_0
    return-object v5

    .line 199
    :cond_2
    :try_start_1
    iget-object v8, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 202
    .local v4, res:Landroid/content/res/Resources;
    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_6

    .line 203
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 204
    const-string v8, "tts-engine"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 205
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uses unknown tag :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 232
    if-eqz v3, :cond_4

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    move-object v5, v7

    goto :goto_0

    .line 210
    :cond_5
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 211
    .local v1, attrs:Landroid/util/AttributeSet;
    sget-object v8, Lcom/android/internal/R$styleable;->TextToSpeechEngine:[I

    invoke-virtual {v4, v1, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, settings:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    if-eqz v3, :cond_1

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 232
    .end local v0           #array:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v5           #settings:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    move-object v5, v7

    goto :goto_0

    .line 222
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v6           #type:I
    :catch_0
    move-exception v2

    .line 223
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not load resources for : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    if-eqz v3, :cond_8

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    move-object v5, v7

    goto/16 :goto_0

    .line 225
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 226
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 232
    if-eqz v3, :cond_9

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    move-object v5, v7

    goto/16 :goto_0

    .line 228
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 229
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v8, "TtsEngines"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    if-eqz v3, :cond_a

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    move-object v5, v7

    goto/16 :goto_0

    .line 232
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_b

    .line 233
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v7
.end method

.method private updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "list"
    .parameter "key"
    .parameter "newValue"

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x3a

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v6, newPrefList:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 437
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 439
    :cond_1
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, prefValues:[Ljava/lang/String;
    const/4 v2, 0x1

    .line 443
    .local v2, first:Z
    const/4 v3, 0x0

    .line 444
    .local v3, found:Z
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 445
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 446
    .local v1, delimiter:I
    if-lez v1, :cond_2

    .line 447
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 448
    if-eqz v2, :cond_3

    .line 449
    const/4 v2, 0x0

    .line 453
    :goto_2
    const/4 v3, 0x1

    .line 454
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 451
    :cond_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 456
    :cond_4
    if-eqz v2, :cond_5

    .line 457
    const/4 v2, 0x0

    .line 462
    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 459
    :cond_5
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 467
    .end local v1           #delimiter:I
    .end local v8           #value:Ljava/lang/String;
    :cond_6
    if-nez v3, :cond_0

    .line 470
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getDefaultEngine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_synth"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, engine:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #engine:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #engine:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 99
    iget-object v3, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.TTS_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 108
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v3

    .line 111
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getEngines()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v7, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 121
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.TTS_SERVICE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, intent:Landroid/content/Intent;
    const/high16 v7, 0x1

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 124
    .local v6, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 126
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 129
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5, v4}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 130
    .local v0, engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .end local v0           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    sget-object v7, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getHighestRankedEngineName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "engineName"

    .prologue
    .line 294
    iget-object v1, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_locale"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/speech/tts/TtsEngines;->parseEnginePrefFromList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, locale:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-direct {p0}, Landroid/speech/tts/TtsEngines;->getV1Locale()Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    return-object v0
.end method

.method public getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "engine"

    .prologue
    .line 159
    iget-object v6, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 160
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.TTS_SERVICE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const v6, 0x10080

    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 168
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 169
    .local v4, service:Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    .line 170
    invoke-direct {p0, v4, v2}, Landroid/speech/tts/TtsEngines;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, settings:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    .end local v0           #i:Landroid/content/Intent;
    .end local v4           #service:Landroid/content/pm/ServiceInfo;
    .end local v5           #settings:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEngineInstalled(Ljava/lang/String;)Z
    .locals 2
    .parameter "engine"

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "newLocale"

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tts_default_locale"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, prefList:Ljava/lang/String;
    invoke-direct {p0, v1, p1, p2}, Landroid/speech/tts/TtsEngines;->updateValueInCommaSeparatedList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, newPrefList:Ljava/lang/String;
    iget-object v2, p0, Landroid/speech/tts/TtsEngines;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tts_default_locale"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit p0

    return-void

    .line 411
    .end local v0           #newPrefList:Ljava/lang/String;
    .end local v1           #prefList:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
