struct Node {
    int data;
    Node* next;
    Node* prev;
};


class FrontMiddleBackQueue {
private:
    Node* head;
    Node* mid;
    Node* tail;
    int size;
public:
    FrontMiddleBackQueue() {
        head = nullptr;
        mid = nullptr;
        tail = nullptr;
        size = 0;
    }
    
    Node* getNode(int val) {
        Node* n = new Node();
        n->data = val;
        n->next = nullptr;
        n->prev = nullptr;
        return n;
    }
    
    void pushFront(int val) {
        Node* n = getNode(val);
        
        if(head == nullptr) {
            head = n;
            mid = n;
            tail = n;
            size++;
            return;
        }
        
        n->next = head;
        head->prev = n;
        head = n;
        size++;
        
        if(size % 2 == 0) {
            mid = mid->prev;
        }
        
        return;
    }
    
    void pushMiddle(int val) {
        Node* n = getNode(val);

        if(head == nullptr) {
            head = n;
            mid = n;
            tail = n;
            size++;
            return;
        }
        
        if(size % 2 != 0) {
            Node* p = mid->prev;
            if(p != nullptr)
                p->next = n;
            else
                head = n;
            n->prev = p;
            n->next = mid;
            mid->prev = n;
            mid = n;
            size++;
        } else {
            Node* p = mid->next;
            mid->next = n;
            n->prev = mid;
            n->next = p;
            p->prev = n;
            mid = n;
            size++;
        }

        return;
    }
    
    void pushBack(int val) {
        Node* n = getNode(val);
        
        if(head == nullptr) {
            head = n;
            mid = n;
            tail = n;
            size++;
            return;
        }
        
        n->prev = tail;
        tail->next = n;
        tail = n;
        size++;
        
        if(size % 2 != 0) {
            mid = mid->next;
        }
        
        return;
    }
    
    int popFront() {
        if(head == nullptr) {
            return -1;
        }
        
        int val = head->data;
        Node* p = head;
        head = head->next;
        size--;
        
        if(size == 0) {
            tail = nullptr;
            mid = nullptr;
            head = nullptr;
        } else if(size % 2 != 0) {
            mid = mid->next;
        }
        
        if(head != nullptr)
            head->prev = nullptr;

        delete p;
        return val;
        
    }
    
    int popMiddle() {
        if(head == nullptr) {
            return -1;
        }

        size--;
        Node* p = mid;
        int val = p->data;
        
        if(size == 0) {
            tail = nullptr;
            mid = nullptr;
            head = nullptr;
        } else if(size % 2 == 0) {
            mid->prev->next = p->next;
            mid = p->prev;
            if(p->next != nullptr) {
                p->next->prev = mid;
            }
        } else {
            mid = mid->next;
            mid->prev = p->prev;
            if(p->prev != nullptr) {
                p->prev->next = mid;
            } else {
                head = mid;
                tail = mid;
            }
        }

        delete p;
        return val;
    }
    
    int popBack() {
        if(head == nullptr) {
            return -1;
        }
        
        size--;
        
        Node* p = tail;
        int val = p->data;
        tail = tail->prev;
        if(tail != nullptr)
        tail->next = nullptr;

        if(size == 0) {
            tail = nullptr;
            head = nullptr;
            mid = nullptr;
        } else if(size % 2 == 0) {
            mid = mid->prev;
        }
        
        delete p;
        return val;
    }
};