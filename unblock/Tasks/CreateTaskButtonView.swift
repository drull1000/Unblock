
import SwiftUI

struct CreateTaskButtonView: View {
    @State private var isCreatingTask = false
    @Binding var taskName: String
    @Binding var taskDescription: String
    var body: some View {
        Button("Create new task") {
            isCreatingTask.toggle()
        }.sheet(isPresented: $isCreatingTask) {
            TaskInputView(taskName: $taskName, taskDescription: $taskDescription, isPresented: $isCreatingTask)
        }
    }
}

 
struct CreateTaskButtonView_Previews: PreviewProvider {
    @State static var previewTaskName: String = "Sample Task Name"
    @State static var previewTaskDescription: String = "Sample Task description"
    @State static var isPresented: Bool = true
        
    static var previews: some View {
        CreateTaskButtonView(taskName: $previewTaskName, taskDescription: $previewTaskDescription)
    }
}
