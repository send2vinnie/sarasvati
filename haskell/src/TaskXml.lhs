
> module TaskXml where
> import WorkflowXml
> import XmlUtil
> import Workflow
> import Task

> processTaskElement element source = Node 0 nodeId source nodeType defaultGuard acceptFunction
>     where
>         nodeId         = readAttr element "nodeId"
>         nodeTypeStr    = readAttr element "type"
>         name           = readAttr element "name"
>         desc           = readAttr element "description"
>
>         nodeType       = nodeTypeFromString nodeTypeStr
>
>         acceptFunction = acceptAndCreateTask nodeId name desc
