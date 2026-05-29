.class public final synthetic La/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p0, Lcom/microsoft/bond/Metadata;

    .line 5
    invoke-direct {p0}, Lcom/microsoft/bond/Metadata;-><init>()V

    return-object p0
.end method

.method public static b(Lcom/microsoft/bond/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/bond/Metadata;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/microsoft/bond/Metadata;->setName(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/microsoft/bond/Metadata;->setQualified_name(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/microsoft/bond/Metadata;->getAttributes()Ljava/util/HashMap;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p0, Lcom/microsoft/bond/Metadata;

    .line 6
    invoke-direct {p0}, Lcom/microsoft/bond/Metadata;-><init>()V

    return-object p0
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
