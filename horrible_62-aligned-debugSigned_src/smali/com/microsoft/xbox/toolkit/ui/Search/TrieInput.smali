.class public Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Context:Ljava/lang/Object;

.field public Text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Text:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/Search/TrieInput;->Context:Ljava/lang/Object;

    return-void
.end method
