.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .prologue
    .line 1132
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, ""

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string/jumbo v17, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string/jumbo v17, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string/jumbo v17, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string/jumbo v17, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string/jumbo v17, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string/jumbo v17, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1325
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x7

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x8

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0x9

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xa

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xb

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xc

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    const/16 v16, 0xd

    const-string v17, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1458
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 1460
    .local v9, r:Landroid/content/res/Resources;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Message_UseSingleShiftTableWhenComposeSMS"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1461
    const/4 v15, 0x1

    new-array v15, v15, [I

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, v15, v16

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1462
    const-string v15, "GSM"

    const-string/jumbo v16, "sEnabledSingleShiftTables sets as Turkey"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :goto_0
    const v15, 0x1070039

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1467
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v8, v15

    .line 1468
    .local v8, numTables:I
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v7, v15

    .line 1469
    .local v7, numShiftTables:I
    if-eq v8, v7, :cond_0

    .line 1470
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language tables array length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " != shift tables array length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_0
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v15, v15

    if-lez v15, :cond_3

    .line 1475
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget v15, v15, v16

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1481
    :goto_1
    new-array v15, v8, [Landroid/util/SparseIntArray;

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1482
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_5

    .line 1483
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v13, v15, v4

    .line 1485
    .local v13, table:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 1486
    .local v14, tableLen:I
    if-eqz v14, :cond_1

    const/16 v15, 0x80

    if-eq v14, v15, :cond_1

    .line 1487
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language tables index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (expected 128 or 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_1
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v14}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1492
    .local v2, charToGsmTable:Landroid/util/SparseIntArray;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v2, v15, v4

    .line 1493
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v14, :cond_4

    .line 1494
    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1495
    .local v1, c:C
    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1464
    .end local v1           #c:C
    .end local v2           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v7           #numShiftTables:I
    .end local v8           #numTables:I
    .end local v13           #table:Ljava/lang/String;
    .end local v14           #tableLen:I
    :cond_2
    const v15, 0x1070038

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    goto/16 :goto_0

    .line 1478
    .restart local v7       #numShiftTables:I
    .restart local v8       #numTables:I
    :cond_3
    const/4 v15, 0x0

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_1

    .line 1482
    .restart local v2       #charToGsmTable:Landroid/util/SparseIntArray;
    .restart local v4       #i:I
    .restart local v6       #j:I
    .restart local v13       #table:Ljava/lang/String;
    .restart local v14       #tableLen:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1499
    .end local v2           #charToGsmTable:Landroid/util/SparseIntArray;
    .end local v6           #j:I
    .end local v13           #table:Ljava/lang/String;
    .end local v14           #tableLen:I
    :cond_5
    new-array v15, v8, [Landroid/util/SparseIntArray;

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1500
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_9

    .line 1501
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v10, v15, v4

    .line 1503
    .local v10, shiftTable:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 1504
    .local v11, shiftTableLen:I
    if-eqz v11, :cond_6

    const/16 v15, 0x80

    if-eq v11, v15, :cond_6

    .line 1505
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error: language shift tables index "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " length "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (expected 128 or 0)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_6
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, v11}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1510
    .local v3, charToShiftTable:Landroid/util/SparseIntArray;
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v3, v15, v4

    .line 1511
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_5
    if-ge v6, v11, :cond_8

    .line 1512
    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1513
    .restart local v1       #c:C
    const/16 v15, 0x20

    if-eq v1, v15, :cond_7

    .line 1514
    invoke-virtual {v3, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1511
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1500
    .end local v1           #c:C
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1737
    .end local v3           #charToShiftTable:Landroid/util/SparseIntArray;
    .end local v6           #j:I
    .end local v10           #shiftTable:Ljava/lang/String;
    .end local v11           #shiftTableLen:I
    :cond_9
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1738
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1739
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1740
    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1743
    const/4 v4, 0x0

    .line 1745
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x40

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1746
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa3

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1747
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x24

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa5

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf9

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xec

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf8

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1760
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe5

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1762
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x394

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1763
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x5f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1764
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x393

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39b

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a0

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a3

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x398

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v16, 0xffff

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1775
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe6

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xdf

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1777
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc9

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1779
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x20

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x21

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1781
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x22

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x23

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1783
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa4

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1784
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x25

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1785
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x26

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1786
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x27

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1787
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x28

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1788
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x29

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1789
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1790
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1792
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1793
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1794
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x2f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1796
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x30

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1797
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x31

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1798
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x32

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1799
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x33

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1800
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x34

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1801
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x35

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1802
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x36

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1803
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x37

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1804
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x38

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1805
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x39

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1806
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1807
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1808
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1809
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1810
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1811
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x3f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa1

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x41

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1815
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x42

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x43

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x44

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1818
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x45

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1819
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x46

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1820
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x47

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1821
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x48

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1822
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x49

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1823
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1824
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1825
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1826
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1827
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1828
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x4f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1830
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x50

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1831
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x51

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1832
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x52

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1833
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x53

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1834
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x54

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x55

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x56

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1837
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x57

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1838
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x58

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1839
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x59

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1840
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x5a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xc4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1842
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1843
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xd1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1844
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xdc

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1845
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xa7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1847
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xbf

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1848
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x61

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1849
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x62

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1850
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x63

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1851
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x64

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x65

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1853
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x66

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x67

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1855
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x68

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1856
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x69

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1857
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1858
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6b

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1859
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6c

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1860
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6d

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1861
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6e

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1862
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x6f

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1864
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x70

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1865
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x71

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1866
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x72

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1867
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x73

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1868
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x74

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1869
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x75

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x76

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x77

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1872
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x78

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1873
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x79

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x7a

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1875
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf6

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1877
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xf1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1878
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xfc

    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1879
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0xe0

    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move/from16 v0, v16

    invoke-virtual {v15, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1881
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0xc

    const/16 v17, 0xa

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5e

    const/16 v17, 0x14

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1883
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7b

    const/16 v17, 0x28

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1884
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7d

    const/16 v17, 0x29

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5c

    const/16 v17, 0x2f

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1886
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5b

    const/16 v17, 0x3c

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1887
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7e

    const/16 v17, 0x3d

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x5d

    const/16 v17, 0x3e

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1889
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x7c

    const/16 v17, 0x40

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v16, 0x20ac

    const/16 v17, 0x65

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1892
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 1893
    .local v12, size:I
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_6
    if-ge v6, v12, :cond_a

    .line 1894
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    sget-object v17, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1897
    :cond_a
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .line 1898
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v12, :cond_b

    .line 1899
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v16, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    sget-object v17, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Landroid/util/SparseIntArray;->put(II)V

    .line 1898
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1902
    :cond_b
    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1903
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 27
    .parameter "s"
    .parameter "use7bitOnly"

    .prologue
    .line 854
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_3

    .line 855
    new-instance v22, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 856
    .local v22, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    .line 857
    .local v14, septets:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_1

    .line 858
    const/16 v22, 0x0

    .line 985
    .end local v14           #septets:I
    .end local v22           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    :goto_0
    return-object v22

    .line 860
    .restart local v14       #septets:I
    .restart local v22       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 861
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 862
    const/16 v25, 0xa0

    move/from16 v0, v25

    if-le v14, v0, :cond_2

    .line 863
    add-int/lit16 v0, v14, 0x98

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 865
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    sub-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 871
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 868
    :cond_2
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 869
    rsub-int v0, v14, 0xa0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 875
    .end local v14           #septets:I
    .end local v22           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 876
    .local v11, maxSingleShiftCode:I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 880
    .local v10, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, arr$:[I
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_5

    aget v6, v4, v7

    .line 883
    .local v6, i:I
    if-eqz v6, :cond_4

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 884
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 888
    .end local v6           #i:I
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 890
    .local v19, sz:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i:I
    :goto_3
    move/from16 v0, v19

    if-ge v6, v0, :cond_e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_e

    .line 891
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 892
    .local v5, c:C
    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 893
    const-string v25, "GSM"

    const-string v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 897
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 898
    .local v9, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    .line 899
    .local v21, tableIndex:I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 901
    const/16 v20, 0x0

    .local v20, table:I
    :goto_4
    move/from16 v0, v20

    if-gt v0, v11, :cond_8

    .line 902
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 903
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    .line 904
    .local v18, shiftTableIndex:I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 905
    if-eqz p1, :cond_a

    .line 907
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 908
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 901
    .end local v18           #shiftTableIndex:I
    :cond_9
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 911
    .restart local v18       #shiftTableIndex:I
    :cond_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_5

    .line 915
    :cond_b
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_5

    .line 921
    .end local v18           #shiftTableIndex:I
    .end local v20           #table:I
    :cond_c
    const/16 v20, 0x0

    .restart local v20       #table:I
    :goto_6
    move/from16 v0, v20

    if-gt v0, v11, :cond_8

    .line 922
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_d

    .line 923
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 921
    :cond_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 931
    .end local v5           #c:C
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v20           #table:I
    .end local v21           #tableIndex:I
    :cond_e
    new-instance v22, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 932
    .restart local v22       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 933
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 934
    const v12, 0x7fffffff

    .line 935
    .local v12, minUnencodableCount:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 936
    .restart local v9       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v17, 0x0

    .local v17, shiftTable:I
    :goto_7
    move/from16 v0, v17

    if-gt v0, v11, :cond_f

    .line 937
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    .line 938
    .restart local v14       #septets:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_11

    .line 936
    :cond_10
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 942
    :cond_11
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_16

    if-eqz v17, :cond_16

    .line 943
    const/16 v23, 0x8

    .line 951
    .local v23, udhLength:I
    :goto_9
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_19

    .line 952
    if-nez v23, :cond_12

    .line 953
    const/16 v23, 0x1

    .line 955
    :cond_12
    add-int/lit8 v23, v23, 0x6

    .line 956
    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    .line 957
    .local v15, septetsPerMessage:I
    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    .line 958
    .local v13, msgCount:I
    mul-int v25, v13, v15

    sub-int v16, v25, v14

    .line 964
    .end local v15           #septetsPerMessage:I
    .local v16, septetsRemaining:I
    :goto_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 965
    .local v24, unencodableCount:I
    if-eqz p1, :cond_13

    move/from16 v0, v24

    if-gt v0, v12, :cond_10

    .line 968
    :cond_13
    if-eqz p1, :cond_14

    move/from16 v0, v24

    if-lt v0, v12, :cond_15

    :cond_14
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_15

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_10

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 971
    :cond_15
    move/from16 v12, v24

    .line 972
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 973
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 974
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 975
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 976
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto :goto_8

    .line 944
    .end local v13           #msgCount:I
    .end local v16           #septetsRemaining:I
    .end local v23           #udhLength:I
    .end local v24           #unencodableCount:I
    :cond_16
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_17

    if-eqz v17, :cond_18

    .line 945
    :cond_17
    const/16 v23, 0x5

    .restart local v23       #udhLength:I
    goto :goto_9

    .line 947
    .end local v23           #udhLength:I
    :cond_18
    const/16 v23, 0x0

    .restart local v23       #udhLength:I
    goto :goto_9

    .line 960
    :cond_19
    const/4 v13, 0x1

    .line 961
    .restart local v13       #msgCount:I
    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    .restart local v16       #septetsRemaining:I
    goto :goto_a

    .line 981
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13           #msgCount:I
    .end local v14           #septets:I
    .end local v16           #septetsRemaining:I
    .end local v17           #shiftTable:I
    .end local v23           #udhLength:I
    :cond_1a
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 982
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method public static CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 31
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "maxEmailLen"

    .prologue
    .line 1929
    const-string v28, "GSM"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "sEnabledSingleShiftTables.length + sEnabledLockingShiftTables.length == 0: "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sget-object v30, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    if-nez v27, :cond_1

    const/16 v27, 0x1

    :goto_0
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    if-nez v27, :cond_8

    .line 1932
    new-instance v24, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1933
    .local v24, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v16

    .line 1935
    .local v16, septets:I
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 1936
    const/16 v24, 0x0

    .line 2096
    .end local v16           #septets:I
    .end local v24           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    :goto_1
    return-object v24

    .line 1929
    :cond_1
    const/16 v27, 0x0

    goto :goto_0

    .line 1942
    .restart local v16       #septets:I
    .restart local v24       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    if-lez p2, :cond_3

    move/from16 v0, p2

    rsub-int v0, v0, 0xa0

    move/from16 v27, v0

    add-int/lit8 v11, v27, -0x1

    .line 1944
    .local v11, maxLenPerSMS:I
    :goto_2
    if-lez p2, :cond_4

    move/from16 v0, p2

    rsub-int v0, v0, 0x99

    move/from16 v27, v0

    add-int/lit8 v12, v27, -0x1

    .line 1948
    .local v12, maxLenPerSMSWithHeader:I
    :goto_3
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    move/from16 v0, v16

    if-gt v0, v11, :cond_5

    .line 1949
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1950
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1951
    sub-int v27, v11, v16

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1952
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_1

    .line 1942
    .end local v11           #maxLenPerSMS:I
    .end local v12           #maxLenPerSMSWithHeader:I
    :cond_3
    const/16 v11, 0xa0

    goto :goto_2

    .line 1944
    .restart local v11       #maxLenPerSMS:I
    :cond_4
    const/16 v12, 0x99

    goto :goto_3

    .line 1953
    .restart local v12       #maxLenPerSMSWithHeader:I
    :cond_5
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1954
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1955
    move/from16 v0, v16

    if-le v0, v11, :cond_7

    .line 1956
    add-int/lit8 v27, v12, -0x1

    add-int v27, v27, v16

    div-int v27, v27, v12

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1959
    rem-int v27, v16, v12

    if-lez v27, :cond_6

    .line 1960
    rem-int v27, v16, v12

    sub-int v27, v12, v27

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1969
    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_1

    .line 1963
    :cond_6
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    .line 1966
    :cond_7
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1967
    sub-int v27, v11, v16

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    .line 1976
    .end local v11           #maxLenPerSMS:I
    .end local v12           #maxLenPerSMSWithHeader:I
    .end local v16           #septets:I
    .end local v24           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_8
    sget v13, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1977
    .local v13, maxSingleShiftCode:I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1981
    .local v10, lpcList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v27, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1982
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, arr$:[I
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_5
    if-ge v7, v8, :cond_a

    aget v6, v4, v7

    .line 1985
    .local v6, i:I
    if-eqz v6, :cond_9

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v27, v27, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_9

    .line 1986
    new-instance v27, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1982
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1990
    .end local v6           #i:I
    :cond_a
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 1992
    .local v21, sz:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i:I
    :goto_6
    move/from16 v0, v21

    if-ge v6, v0, :cond_13

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_13

    .line 1993
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1994
    .local v5, c:C
    const/16 v27, 0x1b

    move/from16 v0, v27

    if-ne v5, v0, :cond_c

    .line 1995
    const-string v27, "GSM"

    const-string v28, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1999
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 2000
    .local v9, lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v23

    .line 2001
    .local v23, tableIndex:I
    const/16 v27, -0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    .line 2004
    const/16 v22, 0x0

    .local v22, table:I
    :goto_7
    move/from16 v0, v22

    if-gt v0, v13, :cond_d

    .line 2005
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v27, v27, v22

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 2006
    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v27, v27, v22

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v20

    .line 2008
    .local v20, shiftTableIndex:I
    const/16 v27, -0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 2009
    if-eqz p1, :cond_f

    .line 2011
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x1

    aput v28, v27, v22

    .line 2012
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x1

    aput v28, v27, v22

    .line 2004
    .end local v20           #shiftTableIndex:I
    :cond_e
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 2016
    .restart local v20       #shiftTableIndex:I
    :cond_f
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    const/16 v28, -0x1

    aput v28, v27, v22

    goto :goto_8

    .line 2020
    :cond_10
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x2

    aput v28, v27, v22

    goto :goto_8

    .line 2026
    .end local v20           #shiftTableIndex:I
    .end local v22           #table:I
    :cond_11
    const/16 v22, 0x0

    .restart local v22       #table:I
    :goto_9
    move/from16 v0, v22

    if-gt v0, v13, :cond_d

    .line 2027
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v27, v27, v22

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    .line 2028
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x1

    aput v28, v27, v22

    .line 2026
    :cond_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 2037
    .end local v5           #c:C
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v22           #table:I
    .end local v23           #tableIndex:I
    :cond_13
    new-instance v24, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2038
    .restart local v24       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const v27, 0x7fffffff

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2039
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2040
    const v14, 0x7fffffff

    .line 2041
    .local v14, minUnencodableCount:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 2042
    .restart local v9       #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v19, 0x0

    .local v19, shiftTable:I
    :goto_a
    move/from16 v0, v19

    if-gt v0, v13, :cond_14

    .line 2043
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v16, v27, v19

    .line 2044
    .restart local v16       #septets:I
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 2042
    :cond_15
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 2048
    :cond_16
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    if-eqz v19, :cond_1b

    .line 2049
    const/16 v25, 0x8

    .line 2059
    .local v25, udhLength:I
    :goto_c
    add-int v27, v16, v25

    const/16 v28, 0xa0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1e

    .line 2060
    if-nez v25, :cond_17

    .line 2061
    const/16 v25, 0x1

    .line 2063
    :cond_17
    add-int/lit8 v25, v25, 0x6

    .line 2064
    move/from16 v0, v25

    rsub-int v0, v0, 0xa0

    move/from16 v17, v0

    .line 2065
    .local v17, septetsPerMessage:I
    add-int v27, v16, v17

    add-int/lit8 v27, v27, -0x1

    div-int v15, v27, v17

    .line 2067
    .local v15, msgCount:I
    mul-int v27, v15, v17

    sub-int v18, v27, v16

    .line 2075
    .end local v17           #septetsPerMessage:I
    .local v18, septetsRemaining:I
    :goto_d
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v27, v0

    aget v26, v27, v19

    .line 2076
    .local v26, unencodableCount:I
    if-eqz p1, :cond_18

    move/from16 v0, v26

    if-gt v0, v14, :cond_15

    .line 2079
    :cond_18
    if-eqz p1, :cond_19

    move/from16 v0, v26

    if-lt v0, v14, :cond_1a

    :cond_19
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v15, v0, :cond_1a

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_15

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-le v0, v1, :cond_15

    .line 2082
    :cond_1a
    move/from16 v14, v26

    .line 2083
    move-object/from16 v0, v24

    iput v15, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2084
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2085
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2086
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 2087
    move/from16 v0, v19

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    goto/16 :goto_b

    .line 2051
    .end local v15           #msgCount:I
    .end local v18           #septetsRemaining:I
    .end local v25           #udhLength:I
    .end local v26           #unencodableCount:I
    :cond_1b
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    if-nez v27, :cond_1c

    if-eqz v19, :cond_1d

    .line 2052
    :cond_1c
    const/16 v25, 0x5

    .restart local v25       #udhLength:I
    goto :goto_c

    .line 2055
    .end local v25           #udhLength:I
    :cond_1d
    const/16 v25, 0x0

    .restart local v25       #udhLength:I
    goto/16 :goto_c

    .line 2069
    :cond_1e
    const/4 v15, 0x1

    .line 2070
    .restart local v15       #msgCount:I
    move/from16 v0, v25

    rsub-int v0, v0, 0xa0

    move/from16 v27, v0

    sub-int v18, v27, v16

    .restart local v18       #septetsRemaining:I
    goto :goto_d

    .line 2092
    .end local v9           #lpc:Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v15           #msgCount:I
    .end local v16           #septets:I
    .end local v18           #septetsRemaining:I
    .end local v19           #shiftTable:I
    .end local v25           #udhLength:I
    :cond_1f
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    move/from16 v27, v0

    const v28, 0x7fffffff

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 2093
    const/16 v24, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 102
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 125
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 127
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 128
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 130
    if-ne v0, v2, :cond_1

    .line 131
    if-eqz p1, :cond_0

    .line 132
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 134
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 137
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 141
    goto :goto_0
.end method

.method public static charToGsmExtended(C)I
    .locals 5
    .parameter "c"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 155
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 157
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 158
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 161
    .end local v0           #ret:I
    :cond_0
    return v0
.end method

.method public static convertEachCharacter(C)C
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, -0x1

    .line 1522
    move v0, p0

    .line 1525
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 1526
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1527
    move v0, p0

    .line 1536
    :cond_0
    :goto_0
    return v0

    .line 1528
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 1529
    move v0, p0

    goto :goto_0

    .line 1532
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_0
.end method

.method private static convertNonGSMCharacter(C)C
    .locals 4
    .parameter "c"

    .prologue
    .line 1540
    move v0, p0

    .line 1542
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1543
    sparse-switch v0, :sswitch_data_0

    .line 1716
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_1

    .line 1717
    :cond_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    .line 1719
    const/16 v0, 0x20

    .line 1728
    :cond_1
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1730
    return v0

    .line 1554
    :sswitch_0
    const/16 v0, 0x61

    goto :goto_0

    .line 1555
    :sswitch_1
    const/16 v0, 0x61

    goto :goto_0

    .line 1556
    :sswitch_2
    const/16 v0, 0x61

    goto :goto_0

    .line 1557
    :sswitch_3
    const/16 v0, 0x61

    goto :goto_0

    .line 1558
    :sswitch_4
    const/16 v0, 0x61

    goto :goto_0

    .line 1560
    :sswitch_5
    const/16 v0, 0x41

    goto :goto_0

    .line 1561
    :sswitch_6
    const/16 v0, 0x41

    goto :goto_0

    .line 1562
    :sswitch_7
    const/16 v0, 0x41

    goto :goto_0

    .line 1563
    :sswitch_8
    const/16 v0, 0x41

    goto :goto_0

    .line 1564
    :sswitch_9
    const/16 v0, 0x41

    goto :goto_0

    .line 1565
    :sswitch_a
    const/16 v0, 0x41

    goto :goto_0

    .line 1567
    :sswitch_b
    const/16 v0, 0x63

    goto :goto_0

    .line 1568
    :sswitch_c
    const/16 v0, 0x63

    goto :goto_0

    .line 1569
    :sswitch_d
    const/16 v0, 0x63

    goto :goto_0

    .line 1571
    :sswitch_e
    const/16 v0, 0x43

    goto :goto_0

    .line 1572
    :sswitch_f
    const/16 v0, 0x43

    goto :goto_0

    .line 1574
    :sswitch_10
    const/16 v0, 0x64

    goto :goto_0

    .line 1576
    :sswitch_11
    const/16 v0, 0x44

    goto :goto_0

    .line 1578
    :sswitch_12
    const/16 v0, 0x65

    goto :goto_0

    .line 1579
    :sswitch_13
    const/16 v0, 0x65

    goto :goto_0

    .line 1580
    :sswitch_14
    const/16 v0, 0x65

    goto :goto_0

    .line 1581
    :sswitch_15
    const/16 v0, 0x65

    goto :goto_0

    .line 1582
    :sswitch_16
    const/16 v0, 0x65

    goto :goto_0

    .line 1584
    :sswitch_17
    const/16 v0, 0x45

    goto :goto_0

    .line 1585
    :sswitch_18
    const/16 v0, 0x45

    goto :goto_0

    .line 1586
    :sswitch_19
    const/16 v0, 0x45

    goto :goto_0

    .line 1587
    :sswitch_1a
    const/16 v0, 0x45

    goto :goto_0

    .line 1588
    :sswitch_1b
    const/16 v0, 0x45

    goto :goto_0

    .line 1589
    :sswitch_1c
    const/16 v0, 0x45

    goto :goto_0

    .line 1591
    :sswitch_1d
    const/16 v0, 0x67

    goto :goto_0

    .line 1593
    :sswitch_1e
    const/16 v0, 0x47

    goto :goto_0

    .line 1595
    :sswitch_1f
    const/16 v0, 0x69

    goto :goto_0

    .line 1596
    :sswitch_20
    const/16 v0, 0x69

    goto :goto_0

    .line 1597
    :sswitch_21
    const/16 v0, 0x69

    goto :goto_0

    .line 1598
    :sswitch_22
    const/16 v0, 0x69

    goto/16 :goto_0

    .line 1599
    :sswitch_23
    const/16 v0, 0x69

    goto/16 :goto_0

    .line 1601
    :sswitch_24
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1602
    :sswitch_25
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1603
    :sswitch_26
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1604
    :sswitch_27
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1605
    :sswitch_28
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1606
    :sswitch_29
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1608
    :sswitch_2a
    const/16 v0, 0x6c

    goto/16 :goto_0

    .line 1609
    :sswitch_2b
    const/16 v0, 0x6c

    goto/16 :goto_0

    .line 1610
    :sswitch_2c
    const/16 v0, 0x6c

    goto/16 :goto_0

    .line 1612
    :sswitch_2d
    const/16 v0, 0x4c

    goto/16 :goto_0

    .line 1613
    :sswitch_2e
    const/16 v0, 0x4c

    goto/16 :goto_0

    .line 1614
    :sswitch_2f
    const/16 v0, 0x4c

    goto/16 :goto_0

    .line 1616
    :sswitch_30
    const/16 v0, 0x6e

    goto/16 :goto_0

    .line 1617
    :sswitch_31
    const/16 v0, 0x6e

    goto/16 :goto_0

    .line 1619
    :sswitch_32
    const/16 v0, 0x4e

    goto/16 :goto_0

    .line 1620
    :sswitch_33
    const/16 v0, 0x4e

    goto/16 :goto_0

    .line 1622
    :sswitch_34
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1623
    :sswitch_35
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1624
    :sswitch_36
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1625
    :sswitch_37
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1626
    :sswitch_38
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1628
    :sswitch_39
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1629
    :sswitch_3a
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1630
    :sswitch_3b
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1631
    :sswitch_3c
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1632
    :sswitch_3d
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1633
    :sswitch_3e
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1635
    :sswitch_3f
    const/16 v0, 0x72

    goto/16 :goto_0

    .line 1636
    :sswitch_40
    const/16 v0, 0x72

    goto/16 :goto_0

    .line 1638
    :sswitch_41
    const/16 v0, 0x52

    goto/16 :goto_0

    .line 1639
    :sswitch_42
    const/16 v0, 0x52

    goto/16 :goto_0

    .line 1641
    :sswitch_43
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1642
    :sswitch_44
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1643
    :sswitch_45
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1645
    :sswitch_46
    const/16 v0, 0x53

    goto/16 :goto_0

    .line 1646
    :sswitch_47
    const/16 v0, 0x53

    goto/16 :goto_0

    .line 1647
    :sswitch_48
    const/16 v0, 0x53

    goto/16 :goto_0

    .line 1649
    :sswitch_49
    const/16 v0, 0x74

    goto/16 :goto_0

    .line 1651
    :sswitch_4a
    const/16 v0, 0x54

    goto/16 :goto_0

    .line 1653
    :sswitch_4b
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1654
    :sswitch_4c
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1655
    :sswitch_4d
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1656
    :sswitch_4e
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1658
    :sswitch_4f
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1659
    :sswitch_50
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1660
    :sswitch_51
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1661
    :sswitch_52
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1662
    :sswitch_53
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1664
    :sswitch_54
    const/16 v0, 0x79

    goto/16 :goto_0

    .line 1665
    :sswitch_55
    const/16 v0, 0x79

    goto/16 :goto_0

    .line 1667
    :sswitch_56
    const/16 v0, 0x59

    goto/16 :goto_0

    .line 1668
    :sswitch_57
    const/16 v0, 0x59

    goto/16 :goto_0

    .line 1670
    :sswitch_58
    const/16 v0, 0x7a

    goto/16 :goto_0

    .line 1671
    :sswitch_59
    const/16 v0, 0x7a

    goto/16 :goto_0

    .line 1672
    :sswitch_5a
    const/16 v0, 0x7a

    goto/16 :goto_0

    .line 1674
    :sswitch_5b
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1675
    :sswitch_5c
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1676
    :sswitch_5d
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1679
    :sswitch_5e
    const/16 v0, 0x45

    goto/16 :goto_0

    .line 1680
    :sswitch_5f
    const/16 v0, 0x50

    goto/16 :goto_0

    .line 1681
    :sswitch_60
    const/16 v0, 0x54

    goto/16 :goto_0

    .line 1682
    :sswitch_61
    const/16 v0, 0x59

    goto/16 :goto_0

    .line 1683
    :sswitch_62
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1684
    :sswitch_63
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1685
    :sswitch_64
    const/16 v0, 0x41

    goto/16 :goto_0

    .line 1686
    :sswitch_65
    const/16 v0, 0x48

    goto/16 :goto_0

    .line 1687
    :sswitch_66
    const/16 v0, 0x4b

    goto/16 :goto_0

    .line 1688
    :sswitch_67
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1689
    :sswitch_68
    const/16 v0, 0x58

    goto/16 :goto_0

    .line 1690
    :sswitch_69
    const/16 v0, 0x42

    goto/16 :goto_0

    .line 1691
    :sswitch_6a
    const/16 v0, 0x4e

    goto/16 :goto_0

    .line 1692
    :sswitch_6b
    const/16 v0, 0x4d

    goto/16 :goto_0

    .line 1705
    :sswitch_6c
    const/16 v0, 0x65

    goto/16 :goto_0

    .line 1706
    :sswitch_6d
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1707
    :sswitch_6e
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1708
    :sswitch_6f
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1709
    :sswitch_70
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1710
    :sswitch_71
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1711
    :sswitch_72
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1721
    :cond_2
    const v0, 0xfeff

    goto/16 :goto_0

    .line 1543
    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_6
        0xc2 -> :sswitch_7
        0xc3 -> :sswitch_8
        0xc8 -> :sswitch_17
        0xca -> :sswitch_18
        0xcb -> :sswitch_19
        0xcc -> :sswitch_24
        0xcd -> :sswitch_25
        0xce -> :sswitch_26
        0xcf -> :sswitch_27
        0xd2 -> :sswitch_39
        0xd3 -> :sswitch_3a
        0xd4 -> :sswitch_3b
        0xd5 -> :sswitch_3c
        0xd9 -> :sswitch_4f
        0xda -> :sswitch_50
        0xdb -> :sswitch_51
        0xdd -> :sswitch_56
        0xe1 -> :sswitch_0
        0xe2 -> :sswitch_1
        0xe3 -> :sswitch_2
        0xe7 -> :sswitch_d
        0xe9 -> :sswitch_6c
        0xea -> :sswitch_12
        0xeb -> :sswitch_13
        0xed -> :sswitch_1f
        0xee -> :sswitch_20
        0xef -> :sswitch_21
        0xf3 -> :sswitch_34
        0xf4 -> :sswitch_35
        0xf5 -> :sswitch_36
        0xf6 -> :sswitch_6d
        0xfa -> :sswitch_4b
        0xfb -> :sswitch_4c
        0xfc -> :sswitch_6e
        0xfd -> :sswitch_54
        0xff -> :sswitch_55
        0x100 -> :sswitch_9
        0x101 -> :sswitch_4
        0x104 -> :sswitch_a
        0x105 -> :sswitch_3
        0x106 -> :sswitch_e
        0x107 -> :sswitch_b
        0x10c -> :sswitch_f
        0x10d -> :sswitch_c
        0x10e -> :sswitch_11
        0x10f -> :sswitch_10
        0x112 -> :sswitch_1c
        0x113 -> :sswitch_16
        0x118 -> :sswitch_1a
        0x119 -> :sswitch_14
        0x11a -> :sswitch_1b
        0x11b -> :sswitch_15
        0x11e -> :sswitch_1e
        0x11f -> :sswitch_1d
        0x12a -> :sswitch_29
        0x12b -> :sswitch_23
        0x130 -> :sswitch_28
        0x131 -> :sswitch_22
        0x139 -> :sswitch_2d
        0x13a -> :sswitch_2a
        0x13d -> :sswitch_2e
        0x13e -> :sswitch_2b
        0x141 -> :sswitch_2f
        0x142 -> :sswitch_2c
        0x143 -> :sswitch_32
        0x144 -> :sswitch_30
        0x147 -> :sswitch_33
        0x148 -> :sswitch_31
        0x14c -> :sswitch_3d
        0x14d -> :sswitch_37
        0x150 -> :sswitch_6f
        0x151 -> :sswitch_70
        0x152 -> :sswitch_3e
        0x153 -> :sswitch_38
        0x154 -> :sswitch_41
        0x155 -> :sswitch_3f
        0x158 -> :sswitch_42
        0x159 -> :sswitch_40
        0x15a -> :sswitch_46
        0x15b -> :sswitch_43
        0x15e -> :sswitch_48
        0x15f -> :sswitch_45
        0x160 -> :sswitch_47
        0x161 -> :sswitch_44
        0x164 -> :sswitch_4a
        0x165 -> :sswitch_49
        0x16a -> :sswitch_53
        0x16b -> :sswitch_4e
        0x16e -> :sswitch_52
        0x16f -> :sswitch_4d
        0x170 -> :sswitch_71
        0x171 -> :sswitch_72
        0x178 -> :sswitch_57
        0x179 -> :sswitch_5b
        0x17a -> :sswitch_58
        0x17b -> :sswitch_5d
        0x17c -> :sswitch_5a
        0x17d -> :sswitch_5c
        0x17e -> :sswitch_59
        0x391 -> :sswitch_64
        0x392 -> :sswitch_69
        0x395 -> :sswitch_5e
        0x396 -> :sswitch_67
        0x397 -> :sswitch_65
        0x399 -> :sswitch_62
        0x39a -> :sswitch_66
        0x39c -> :sswitch_6b
        0x39d -> :sswitch_6a
        0x39f -> :sswitch_63
        0x3a1 -> :sswitch_5f
        0x3a4 -> :sswitch_60
        0x3a5 -> :sswitch_61
        0x3a7 -> :sswitch_68
    .end sparse-switch
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 732
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 735
    :goto_0
    return v1

    .line 733
    :catch_0
    move-exception v0

    .line 735
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 750
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 754
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 755
    const/4 v0, 0x2

    goto :goto_0

    .line 758
    :cond_2
    if-eqz p1, :cond_0

    .line 759
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 776
    .local v2, sz:I
    const/4 v1, 0x0

    .line 778
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 779
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    return v1
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 10
    .parameter "s"
    .parameter "use7bitOnly"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 801
    const/4 v4, 0x0

    .line 802
    .local v4, count:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 803
    .local v6, sz:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, p2

    .line 804
    .local v2, charToLanguageTable:Landroid/util/SparseIntArray;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 805
    .local v0, activePhoneType:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v8, p3

    .line 806
    .local v3, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 807
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 808
    .local v1, c:C
    const/16 v8, 0x1b

    if-ne v1, v8, :cond_1

    .line 809
    const-string v8, "GSM"

    const-string v9, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {v2, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v8, v7, :cond_3

    .line 813
    add-int/lit8 v4, v4, 0x1

    .line 823
    :goto_1
    const-string v8, "VZW"

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    .line 825
    const/16 v8, 0xa5

    if-eq v1, v8, :cond_2

    const/16 v8, 0xa3

    if-eq v1, v8, :cond_2

    const/16 v8, 0x20ac

    if-ne v1, v8, :cond_0

    .line 830
    .end local v1           #c:C
    :cond_2
    :goto_2
    return v7

    .line 814
    .restart local v1       #c:C
    :cond_3
    invoke-virtual {v3, v1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v8, v7, :cond_4

    .line 815
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 816
    :cond_4
    if-eqz p1, :cond_2

    .line 817
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #c:C
    :cond_5
    move v7, v4

    .line 830
    goto :goto_2
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "langTable"
    .parameter "langShiftTable"

    .prologue
    const/4 v7, -0x1

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1008
    .local v5, size:I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 1009
    .local v2, charToLangTable:Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 1010
    .local v1, charToLangShiftTable:Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 1011
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1012
    .local v3, encodedSeptet:I
    if-ne v3, v7, :cond_1

    .line 1013
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1014
    if-ne v3, v7, :cond_0

    .line 1016
    add-int/lit8 v0, v0, 0x1

    .line 1023
    :goto_1
    if-le v0, p2, :cond_2

    .line 1027
    .end local v3           #encodedSeptet:I
    .end local v4           #i:I
    :goto_2
    return v4

    .line 1018
    .restart local v3       #encodedSeptet:I
    .restart local v4       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1021
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1010
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #encodedSeptet:I
    :cond_3
    move v4, v5

    .line 1027
    goto :goto_2
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    .prologue
    .line 1077
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    .prologue
    .line 1066
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    const/4 v3, 0x0

    .line 414
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 10
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 436
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 438
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 439
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 441
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 442
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 445
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 448
    .local v3, gsmVal:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 450
    const/16 v8, 0x7f

    add-int/lit8 v9, v7, -0x1

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 452
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 455
    :cond_0
    if-eqz v5, :cond_1

    .line 456
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    const/4 v5, 0x0

    .line 438
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 458
    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    .line 459
    const/4 v5, 0x1

    goto :goto_1

    .line 461
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 464
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v2

    .line 465
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    const/4 v8, 0x0

    .line 469
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 15
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "languageTable"
    .parameter "shiftTable"

    .prologue
    .line 490
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .local v9, ret:Ljava/lang/StringBuilder;
    if-ltz p4, :cond_0

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_1

    .line 493
    :cond_0
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 p4, 0x0

    .line 496
    :cond_1
    if-ltz p5, :cond_2

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_3

    .line 497
    :cond_2
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 p5, 0x0

    .line 502
    :cond_3
    const/4 v8, 0x0

    .line 503
    .local v8, prevCharWasEscape:Z
    :try_start_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    .line 504
    .local v7, languageTableToChar:Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    .line 506
    .local v11, shiftTableToChar:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 507
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 510
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 511
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 515
    :cond_5
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_b

    .line 516
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 518
    .local v1, bitOffset:I
    div-int/lit8 v2, v1, 0x8

    .line 519
    .local v2, byteOffset:I
    rem-int/lit8 v10, v1, 0x8

    .line 522
    .local v10, shift:I
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 525
    .local v5, gsmVal:I
    const/4 v12, 0x1

    if-le v10, v12, :cond_6

    .line 527
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 529
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 532
    :cond_6
    if-eqz v8, :cond_9

    .line 533
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_7

    .line 534
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    :goto_1
    const/4 v8, 0x0

    .line 515
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 536
    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 537
    .local v3, c:C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_8

    .line 538
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 550
    .end local v1           #bitOffset:I
    .end local v2           #byteOffset:I
    .end local v3           #c:C
    .end local v5           #gsmVal:I
    .end local v6           #i:I
    .end local v7           #languageTableToChar:Ljava/lang/String;
    .end local v10           #shift:I
    .end local v11           #shiftTableToChar:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 551
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    const/4 v12, 0x0

    .line 555
    .end local v4           #ex:Ljava/lang/RuntimeException;
    :goto_3
    return-object v12

    .line 540
    .restart local v1       #bitOffset:I
    .restart local v2       #byteOffset:I
    .restart local v3       #c:C
    .restart local v5       #gsmVal:I
    .restart local v6       #i:I
    .restart local v7       #languageTableToChar:Ljava/lang/String;
    .restart local v10       #shift:I
    .restart local v11       #shiftTableToChar:Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 544
    .end local v3           #c:C
    :cond_9
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_a

    .line 545
    const/4 v8, 0x1

    goto :goto_2

    .line 547
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 555
    .end local v1           #bitOffset:I
    .end local v2           #byteOffset:I
    .end local v5           #gsmVal:I
    .end local v10           #shift:I
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 573
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "characterset"

    .prologue
    .line 588
    const/4 v6, 0x0

    .line 589
    .local v6, isMbcs:Z
    const/4 v2, 0x0

    .line 590
    .local v2, charset:Ljava/nio/charset/Charset;
    const/4 v8, 0x0

    .line 592
    .local v8, mbcsBuffer:Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 595
    const/4 v6, 0x1

    .line 596
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 597
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 601
    :cond_0
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v7, v13, v14

    .line 602
    .local v7, languageTableToChar:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v12, v13, v14

    .line 604
    .local v12, shiftTableToChar:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 605
    .local v10, ret:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 606
    .local v9, prevWasEscape:Z
    move/from16 v4, p1

    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_0
    add-int v13, p1, p2

    if-ge v5, v13, :cond_1

    .line 609
    aget-byte v13, p0, v5

    and-int/lit16 v1, v13, 0xff

    .line 611
    .local v1, c:I
    const/16 v13, 0xff

    if-ne v1, v13, :cond_2

    .line 652
    .end local v1           #c:I
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 613
    .restart local v1       #c:I
    :cond_2
    const/16 v13, 0x1b

    if-ne v1, v13, :cond_4

    .line 614
    if-eqz v9, :cond_3

    .line 618
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    const/4 v9, 0x0

    move v4, v5

    .line 606
    .end local v5           #i:I
    .restart local v4       #i:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_0

    .line 621
    :cond_3
    const/4 v9, 0x1

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 624
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_4
    if-eqz v9, :cond_6

    .line 625
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 626
    .local v11, shiftChar:C
    const/16 v13, 0x20

    if-ne v11, v13, :cond_5

    .line 628
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v4, v5

    .line 648
    .end local v5           #i:I
    .end local v11           #shiftChar:C
    .restart local v4       #i:I
    :goto_3
    const/4 v9, 0x0

    goto :goto_1

    .line 630
    .end local v4           #i:I
    .restart local v5       #i:I
    .restart local v11       #shiftChar:C
    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 633
    .end local v11           #shiftChar:C
    :cond_6
    if-eqz v6, :cond_7

    const/16 v13, 0x80

    if-lt v1, v13, :cond_7

    add-int/lit8 v13, v5, 0x1

    add-int v14, p1, p2

    if-lt v13, v14, :cond_8

    .line 635
    :cond_7
    :try_start_0
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 639
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 636
    .end local v4           #i:I
    .restart local v5       #i:I
    :catch_0
    move-exception v3

    .line 637
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gsm8BitUnpackedToString : Exception - index("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), char("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    .line 639
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 642
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_8
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 643
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 644
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 645
    invoke-virtual {v2, v8}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4
    .parameter "gsmChar"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 200
    const/16 v2, 0x1b

    if-ne p0, v2, :cond_1

    move v0, v1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-ge p0, v2, :cond_2

    .line 203
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, c:C
    if-ne v0, v1, :cond_0

    .line 205
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v0, v1

    .line 210
    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .parameter "gsmChar"

    .prologue
    .line 178
    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 391
    div-int/lit8 v0, p1, 0x8

    .line 392
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 394
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 396
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 397
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 399
    :cond_0
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2
    .parameter "tables"

    .prologue
    .line 1055
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit v0

    return-void

    .line 1055
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 2
    .parameter "tables"

    .prologue
    .line 1038
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1040
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1041
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    :goto_0
    monitor-exit v1

    return-void

    .line 1043
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 290
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .parameter "data"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 342
    .local v7, dataLen:I
    if-nez p2, :cond_0

    const/4 v13, 0x1

    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 344
    .local v10, septetCount:I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1

    .line 345
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 342
    .end local v10           #septetCount:I
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 347
    .restart local v10       #septetCount:I
    :cond_1
    add-int v10, v10, p1

    .line 348
    const/16 v13, 0xff

    if-le v10, v13, :cond_2

    .line 349
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 351
    :cond_2
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 352
    .local v3, byteCount:I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 353
    .local v9, ret:[B
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    .line 354
    .local v5, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    .line 355
    .local v6, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    .local v8, i:I
    move/from16 v11, p1

    .local v11, septets:I
    mul-int/lit8 v2, p1, 0x7

    .line 356
    .local v2, bitOffset:I
    :goto_1
    if-ge v8, v7, :cond_6

    if-ge v11, v10, :cond_6

    .line 358
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 359
    .local v4, c:C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 360
    .local v12, v:I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    .line 361
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 362
    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 363
    if-eqz p2, :cond_3

    .line 364
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 366
    :cond_3
    const/16 v13, 0x20

    const/16 v14, 0x20

    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 374
    :cond_4
    :goto_2
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 375
    add-int/lit8 v11, v11, 0x1

    .line 357
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 369
    :cond_5
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 370
    add-int/lit8 v2, v2, 0x7

    .line 371
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 377
    .end local v4           #c:C
    .end local v12           #v:I
    :cond_6
    const/4 v13, 0x0

    int-to-byte v14, v10

    aput-byte v14, v9, v13

    .line 378
    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .parameter "data"
    .parameter "header"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 257
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 258
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 270
    :goto_0
    return-object v2

    .line 261
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 262
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 264
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 268
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 269
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 665
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 668
    .local v1, septets:I
    new-array v0, v1, [B

    .line 670
    .local v0, ret:[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 672
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 687
    move v4, p2

    .line 688
    .local v4, outByteIndex:I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 689
    .local v1, charToLanguageTable:Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 692
    .local v2, charToShiftTable:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, sz:I
    move v5, v4

    .line 693
    .end local v4           #outByteIndex:I
    .local v5, outByteIndex:I
    :goto_0
    if-ge v3, v6, :cond_1

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_1

    .line 696
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 698
    .local v0, c:C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 700
    .local v7, v:I
    if-ne v7, v9, :cond_4

    .line 701
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 702
    if-ne v7, v9, :cond_0

    .line 703
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 714
    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 694
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 706
    :cond_0
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_2

    .line 718
    .end local v0           #c:C
    .end local v7           #v:I
    :cond_1
    :goto_2
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3

    .line 719
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4           #outByteIndex:I
    .restart local v5       #outByteIndex:I
    goto :goto_2

    .line 710
    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_1

    .line 721
    .end local v0           #c:C
    .end local v4           #outByteIndex:I
    .end local v7           #v:I
    .restart local v5       #outByteIndex:I
    :cond_3
    return-void

    .restart local v0       #c:C
    .restart local v7       #v:I
    :cond_4
    move v4, v5

    .end local v5           #outByteIndex:I
    .restart local v4       #outByteIndex:I
    goto :goto_1
.end method
