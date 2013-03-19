.class public Lcom/sec/android/app/camera/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static final CSC_CHAMELEON_FILE:Ljava/lang/String; = "/carrier/chameleon.xml"

.field private static final CSC_ID_FILE:Ljava/lang/String; = "/system/SW_Configuration.xml"

.field private static final CSC_OTHERS_FILE:Ljava/lang/String; = "/system/csc/others.xml"

.field private static final CSC_XML_FILE:Ljava/lang/String; = "/system/csc/customer.xml"

.field private static final CUSTOMER_XML_PATH:Ljava/lang/String; = "/system/csc/"

.field private static Media_Type:I = 0x0

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field private static final TAG:Ljava/lang/String; = "CscParser"

.field private static mChameleonFileName:Ljava/lang/String;

.field private static mOthersFileName:Ljava/lang/String;

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/CscParser;->value_uri:Landroid/net/Uri;

    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/CscParser;->Media_Type:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChameleonPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "/carrier/chameleon.xml"

    .line 276
    .local v0, chameleon_path:Ljava/lang/String;
    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "/system/csc/customer.xml"

    .line 266
    .local v0, customer_path:Ljava/lang/String;
    return-object v0
.end method

.method public static getIDPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "/system/SW_Configuration.xml"

    .line 281
    .local v0, ID_path:Ljava/lang/String;
    return-object v0
.end method

.method public static getOthersPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-string v0, "/system/csc/others.xml"

    .line 271
    .local v0, others_path:Ljava/lang/String;
    return-object v0
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 105
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 107
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, fe:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "CscParser"

    const-string v4, "update(): xml file exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 114
    iget-object v3, p0, Lcom/sec/android/app/camera/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v3, "CscParser"

    const-string v4, "update(): xml file not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 123
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttrbute(Ljava/lang/String;II)Ljava/lang/String;
    .locals 18
    .parameter "tagPath"
    .parameter "index"
    .parameter "mode"

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, attribute:Ljava/lang/String;
    const-string v15, "[.]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 221
    .local v14, tagSplit:[Ljava/lang/String;
    array-length v10, v14

    .line 223
    .local v10, tagCount:I
    add-int/lit8 v11, v10, -0x1

    .end local v10           #tagCount:I
    .local v11, tagCount:I
    const/4 v15, 0x3

    if-ge v10, v15, :cond_0

    move v10, v11

    .end local v11           #tagCount:I
    .restart local v10       #tagCount:I
    move-object v4, v3

    .line 261
    .end local v3           #attribute:Ljava/lang/String;
    .local v4, attribute:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 228
    .end local v4           #attribute:Ljava/lang/String;
    .end local v10           #tagCount:I
    .restart local v3       #attribute:Ljava/lang/String;
    .restart local v11       #tagCount:I
    :cond_0
    add-int/lit8 v10, v11, -0x1

    .end local v11           #tagCount:I
    .restart local v10       #tagCount:I
    aget-object v9, v14, v11

    .line 229
    .local v9, tagAttr:Ljava/lang/String;
    aget-object v12, v14, v10

    .line 230
    .local v12, tagList:Ljava/lang/String;
    const/4 v13, 0x0

    .line 232
    .local v13, tagNode:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v10, :cond_2

    .line 233
    if-nez v13, :cond_1

    .line 234
    aget-object v13, v14, v6

    .line 232
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 236
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v14, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 239
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lcom/sec/android/app/camera/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 240
    .local v8, nodeList:Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    move/from16 v0, p2

    if-le v15, v0, :cond_3

    .line 241
    move/from16 v0, p2

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 244
    .local v7, list:Lorg/w3c/dom/Element;
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .end local v7           #list:Lorg/w3c/dom/Element;
    :cond_3
    if-eqz v3, :cond_4

    const/4 v15, 0x1

    move/from16 v0, p3

    if-ne v0, v15, :cond_4

    .line 250
    const-string v15, "/"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, attrSlash:[Ljava/lang/String;
    array-length v15, v1

    add-int/lit8 v5, v15, -0x1

    .line 253
    .local v5, cntSlash:I
    aget-object v15, v1, v5

    if-eqz v15, :cond_4

    .line 254
    aget-object v15, v1, v5

    const-string v16, "[.]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, attrSplit:[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v2, v15

    if-eqz v15, :cond_4

    .line 256
    const/4 v15, 0x0

    aget-object v3, v2, v15

    .line 260
    .end local v1           #attrSlash:[Ljava/lang/String;
    .end local v2           #attrSplit:[Ljava/lang/String;
    .end local v5           #cntSlash:I
    :cond_4
    const-string v15, "CscParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 261
    .end local v3           #attribute:Ljava/lang/String;
    .restart local v4       #attribute:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .parameter "node"

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    const/4 v1, 0x0

    .line 215
    :cond_0
    :goto_0
    return-object v1

    .line 204
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 205
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 208
    .local v1, stringValue:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v0           #idx:I
    .end local v1           #stringValue:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 131
    if-nez p1, :cond_1

    move-object v0, v3

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 135
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 144
    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 150
    if-nez p1, :cond_1

    move-object v0, v4

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 155
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 156
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 158
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 159
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 161
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_2
    move-object v0, v4

    .line 167
    goto :goto_0
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 171
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-object v6

    .line 175
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/camera/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 176
    .local v4, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 178
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 179
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 181
    .local v5, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 182
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 184
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    :try_start_1
    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 194
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #list:Lorg/w3c/dom/Element;
    .end local v5           #n:I
    :catch_1
    move-exception v2

    .line 195
    .restart local v2       #e:Ljava/lang/Exception;
    goto :goto_0

    .line 193
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v4       #list:Lorg/w3c/dom/Element;
    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_0
.end method
