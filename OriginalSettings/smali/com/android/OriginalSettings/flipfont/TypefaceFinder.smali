.class public Lcom/android/OriginalSettings/flipfont/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/flipfont/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/flipfont/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 110
    return-void
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/OriginalSettings/flipfont/Typeface;
    .locals 3
    .parameter "typefaceFilename"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, typeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    check-cast v1, Lcom/android/OriginalSettings/flipfont/Typeface;

    .line 210
    .restart local v1       #typeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    :cond_0
    return-object v1

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 7
    .parameter "assetManager"
    .parameter "fontPackageName"

    .prologue
    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, xmlfiles:[Ljava/lang/String;
    :try_start_0
    const-string v4, "xml"

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 77
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 78
    .local v2, in:Ljava/io/InputStream;
    aget-object v4, v3, v1

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .end local v2           #in:Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 71
    .local v0, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 85
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_2
    return v4

    .line 79
    .restart local v1       #i:I
    :catch_1
    move-exception v0

    .line 81
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v4, "TypefaceFinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not possible to open, continue to next file, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 16
    .parameter "packageManager"
    .parameter "entries"
    .parameter "entryValues"
    .parameter "fontPackageName"

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b06c2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v13, "default"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v13, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v14, Lcom/android/OriginalSettings/flipfont/TypefaceFinder$TypefaceSortByName;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder$TypefaceSortByName;-><init>(Lcom/android/OriginalSettings/flipfont/TypefaceFinder;)V

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/flipfont/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, s:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 133
    .local v1, aManager:Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, fontName:Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 136
    .local v12, start_pos:I
    const-string v13, "."

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 137
    .local v3, end_pos:I
    if-gez v3, :cond_0

    .line 138
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 140
    :cond_0
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v5, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, loadTypeface:Ljava/lang/String;
    const-string v13, " "

    const-string v14, ""

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, packageName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 148
    .local v10, res:Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 150
    .local v4, fontAssetManager:Landroid/content/res/AssetManager;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".ttf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 154
    .local v8, newTypeface:Landroid/graphics/Typeface;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/flipfont/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/OriginalSettings/flipfont/Typeface;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/flipfont/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #aManager:Landroid/content/res/AssetManager;
    .end local v3           #end_pos:I
    .end local v4           #fontAssetManager:Landroid/content/res/AssetManager;
    .end local v5           #fontName:Ljava/lang/String;
    .end local v7           #loadTypeface:Ljava/lang/String;
    .end local v8           #newTypeface:Landroid/graphics/Typeface;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #res:Landroid/content/res/Resources;
    .end local v12           #start_pos:I
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 157
    .restart local v1       #aManager:Landroid/content/res/AssetManager;
    .restart local v3       #end_pos:I
    .restart local v5       #fontName:Ljava/lang/String;
    .restart local v7       #loadTypeface:Ljava/lang/String;
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v12       #start_pos:I
    :catch_0
    move-exception v2

    .line 158
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "FlipFont"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".ttf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 165
    .end local v1           #aManager:Landroid/content/res/AssetManager;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #end_pos:I
    .end local v5           #fontName:Ljava/lang/String;
    .end local v7           #loadTypeface:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #start_pos:I
    :cond_2
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 9
    .parameter "xmlFilename"
    .parameter "inStream"
    .parameter "fontPackageName"

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 94
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 95
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 96
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/android/OriginalSettings/flipfont/TypefaceParser;

    invoke-direct {v1}, Lcom/android/OriginalSettings/flipfont/TypefaceParser;-><init>()V

    .line 97
    .local v1, fontParser:Lcom/android/OriginalSettings/flipfont/TypefaceParser;
    invoke-interface {v5, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 98
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 99
    invoke-virtual {v1}, Lcom/android/OriginalSettings/flipfont/TypefaceParser;->getParsedData()Lcom/android/OriginalSettings/flipfont/Typeface;

    move-result-object v2

    .line 100
    .local v2, newTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/flipfont/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2, p3}, Lcom/android/OriginalSettings/flipfont/Typeface;->setFontPackageName(Ljava/lang/String;)V

    .line 102
    iget-object v6, p0, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1           #fontParser:Lcom/android/OriginalSettings/flipfont/TypefaceParser;
    .end local v2           #newTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "TypefaceFinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File parsing is not possible, omit this typeface, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
